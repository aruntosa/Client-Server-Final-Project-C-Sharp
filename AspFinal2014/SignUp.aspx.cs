using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class SignUp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnSignup_Click(object sender, EventArgs e)
    {
        string sqlString = "INSERT INTO Customers (Email, LastName, FirstName, Address, City, State, ZipCode, PhoneNumber, PWD) VALUES ('" + this.txtEmail.Text + "',  '" + this.txtLName.Text + "',  '" + this.txtFName.Text + "',  '" + this.txtAddress.Text + "',  '" + this.txtCity.Text + "',  '" + this.DropDownList1.SelectedValue + "',  '" + this.txtZip.Text + "',  '" + this.txtPhone.Text + "',  '" + this.txtPass.Text + "');";
        OleDbConnection myConn = new OleDbConnection();
        myConn.ConnectionString = this.SqlDataSource2.ConnectionString;
        if (myConn.State == ConnectionState.Closed) myConn.Open();
        OleDbCommand myCommand = new OleDbCommand(sqlString, myConn);
        try
        {
            myCommand.ExecuteNonQuery();
            myConn.Close();
            Response.Redirect("Login.aspx");
        }
        catch (Exception ex)
        {
            this.lblErMessage.Text = "Cannot add record" + ex.Message;

        }
        myConn.Close();
    }
}