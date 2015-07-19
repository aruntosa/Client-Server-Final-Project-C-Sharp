using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class Order : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["custid"] = Session["custid"];
        if (Convert.ToInt32(Session["cartid"]) == 0)
            Session["cartid"] = getCounterValue("CartNumber");
        int x = Convert.ToInt32(Session["cartnumber"]);
    }

    protected void FormView1_ItemCommand(object sender, FormViewCommandEventArgs e)
    {
        if (e.CommandName == "Add to Cart")
        {
            FormViewRow row = this.FormView1.Row;
            string strPartid = Request.QueryString["prod"];
            TextBox tboxQty = (TextBox)row.FindControl("txtQty");
            Int32 intQty = Convert.ToInt32(tboxQty.Text);

            string sqlString;
            OleDbConnection myConn = new OleDbConnection();
            myConn.ConnectionString = this.SqlDataSource1.ConnectionString;
            if (myConn.State == ConnectionState.Closed) myConn.Open();
            sqlString = "insert into Cart_LineItems values (" + Session["cartid"] + ", '" + strPartid + "',  '" + intQty.ToString() + "');";

            OleDbCommand myCommand = new OleDbCommand(sqlString, myConn);
            try
            {
                myCommand.ExecuteNonQuery();
                myConn.Close();
                this.lblAdMessage.Text = "Added to Cart.";
            }
            catch (Exception ex)
            {
                this.lblErMessage.Text = "Cannot add record" + ex.Message;

            }
            myConn.Close();
    
        }
    }

    protected void btnCart_Click(object sender, EventArgs e)
    {
        Response.Redirect("Cart.aspx");
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
}