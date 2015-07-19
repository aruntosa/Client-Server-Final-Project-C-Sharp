using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Members_Checkout : System.Web.UI.Page
{
    bool status;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            Session["cartnumber"] = Session["cartid"];
            Session["custid"] = Session["custid"];
            Session["invnumber"] = getCounterValue("InvNumber");
            LoadData();
        }
    }
    protected void LoadData()
    {
        string strsql = "select * from customers where custnumber = " + Session["custid"];
        OleDbConnection myConn = new OleDbConnection();
        myConn.ConnectionString = System.Web.Configuration.WebConfigurationManager.
        ConnectionStrings["AcmeShoppeConnectionString"].ConnectionString;
        OleDbCommand myCmd = new OleDbCommand(strsql, myConn);
        OleDbDataReader myReader;
        if (myConn.State == ConnectionState.Closed) myConn.Open();
            myReader = myCmd.ExecuteReader();

            if (myReader.HasRows)
            {
                myReader.Read();
                this.lblFName.Text = myReader["FirstName"].ToString();
                this.lblLName.Text = myReader["LastName"].ToString();
                this.txtAddress.Text = myReader["Address"].ToString();
                this.txtCity.Text = myReader["City"].ToString();
                this.txtZip.Text = myReader["ZipCode"].ToString();
                this.DropDownList1.SelectedValue = myReader["State"].ToString();
            }
            else
                this.lblerr.Text = "error";
         myReader.Close();
         myCmd.CommandText = "select sum(extension) from cart_view01 " +
                                    "where cartnumber = " + Session["cartnumber"];
         decimal decSubtotal = 0;
         double decSalesTax = 0;
         double decTotal = 0;
         double decShip = 3.25;
         if (myConn.State == ConnectionState.Closed) myConn.Open();
         myReader = myCmd.ExecuteReader();
         if (myReader.HasRows)
         {
             myReader.Read();
             if (myReader[0] != DBNull.Value)
             {
                 decSubtotal = Convert.ToDecimal(myReader[0].ToString());
                 this.lblSubtotal.Text = decSubtotal.ToString("c");
             }
             decSalesTax = Convert.ToDouble(decSubtotal) * .05;
             Math.Round(decSalesTax, 2);
             decTotal = Convert.ToDouble(decSubtotal) + decSalesTax + decShip;
             Math.Round(decTotal, 2);
             this.lblTax.Text = decSalesTax.ToString("c");
             this.lblTotal.Text = decTotal.ToString("c");
             this.lblShipping.Text = decShip.ToString("c");
         }
         else
             this.lblerr.Text = "error";
         myConn.Close();
    }

    private int getCounterValue(string strKey)
    {
        int count;
        string query = "SELECT idnumber FROM controltable " +
        "WHERE ctlkey = '" + strKey + "';";
        OleDbConnection myConn = new OleDbConnection();
        OleDbDataReader myReader;
        myConn.ConnectionString = this.SqlDataSource1.ConnectionString;
        OleDbCommand myCmd = new OleDbCommand(query, myConn);
        myConn.Open();
        myReader = myCmd.ExecuteReader();
        myReader.Read();
        count = Convert.ToInt32(myReader[0].ToString()) + 1; ;
        myReader.Close();
        string updateQuery = "UPDATE controltable SET idnumber = " + count +
        " where ctlkey = '" + strKey + "';";
        myCmd = new OleDbCommand(updateQuery, myConn);
        myCmd.ExecuteNonQuery();
        myConn.Close();
        return count;
    }

    protected void btnConfirm_Click(object sender, EventArgs e)
    {
        status = false; 
        addInvoiceRecord();
        if (status) addLineItemRecords();
        if (status)
        {
            
            Session.Remove("cartnumber");
            Session.Remove("categoryid");
            Response.Redirect("ConfirmOrder.aspx");
        }
    }

    private void addLineItemRecords()
    {
        string sqlString = "INSERT INTO LineItems (InvoiceNumber, ProductID, Name, " +
        "UnitPrice, Quantity, Extension ) " +
        "SELECT " + Session["invnumber"] + ", ProductID, Name, " +
        "UnitPrice, Quantity, Extension " +
        "FROM Cart_view01 WHERE cartnumber= " + Session["cartnumber"];
        OleDbConnection myConn = new OleDbConnection();
        myConn.ConnectionString = this.SqlDataSource1.ConnectionString;
        OleDbCommand myCmd = new OleDbCommand(sqlString, myConn);
        myConn.Open();
        try
        {
            myCmd.ExecuteNonQuery();
            status = true;
        }
        catch (Exception ex)
        {
            this.lblerr.Text = "Cannot Add Line items " + ex.Message.ToString();
        }
        finally
        {
            myConn.Close();
        }
    }

    private void addInvoiceRecord()
    {
        string sqlString = "INSERT INTO Invoices (InvoiceNumber, CustNumber, CustEmail, FirstName, LastName, Address, City, State, ZipCode, OrderDate, Subtotal, ShipMethod, Shipping, SalesTax, Total, CreditCardType, CardNumber, ExpirationMonth, ExpirationYear, ShipDate) VALUES ('";
        sqlString = sqlString + Session["invnumber"] + "','";
        sqlString = sqlString + Session["custid"] + "', '";
        sqlString = sqlString + Session["userid"] + "', '";
        sqlString = sqlString + lblFName.Text + "', '";
        sqlString = sqlString + lblLName.Text + "', '";
        sqlString = sqlString + txtAddress.Text + "', '";
        sqlString = sqlString + txtCity.Text + "', '";
        sqlString = sqlString + this.DropDownList1.SelectedValue + "', '";
        sqlString = sqlString + txtZip.Text + "', #";
        sqlString = sqlString + DateTime.Now.Date + "#, '";
        sqlString = sqlString + lblSubtotal.Text + "', '";
        sqlString = sqlString + this.rblShip.SelectedValue + "','";
        sqlString = sqlString + lblShipping.Text + "', '";
        sqlString = sqlString + lblTax.Text + "', '";
        sqlString = sqlString + lblTotal.Text + "', '";
        sqlString = sqlString + this.rblCardType.SelectedValue + "', '";
        sqlString = sqlString + this.txtCcard.Text + "', '";
        sqlString = sqlString + ddlMonth.SelectedItem.Value + "', '";
        sqlString = sqlString + ddlYear.SelectedItem.Value + "', ";
        sqlString = sqlString + "null);";
        OleDbConnection myConn = new OleDbConnection();
        myConn.ConnectionString = this.SqlDataSource1.ConnectionString;
        OleDbCommand myCmd = new OleDbCommand(sqlString, myConn);
        myConn.Open();
        try
        {
            myCmd.ExecuteNonQuery();
            status = true;
        }
        catch (Exception ex)
        {
            this.lblerr.Text = "Cannot Add Invoice items " + ex.Message.ToString();
        }
        finally
        {
            myConn.Close();
        }
    
    }
}