using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
using System.Data;
using System.Data.OleDb;

public partial class Login : System.Web.UI.Page
{
    
    protected void Page_Load(string custid)
    {
        
    }


    protected void btnLogin_Click(object sender, EventArgs e)
    {
        string strsql = "select [CustNumber], [Email], [PWD] from customers";
        OleDbConnection myConn = new OleDbConnection();
        myConn.ConnectionString = System.Web.Configuration.WebConfigurationManager.
        ConnectionStrings["AcmeShoppeConnectionString"].ConnectionString;
        OleDbCommand myCmd = new OleDbCommand(strsql, myConn);
        OleDbDataReader myReader;
        if (myConn.State == ConnectionState.Closed) myConn.Open();
            myReader = myCmd.ExecuteReader();
            DataTable dataTable = new DataTable();
            dataTable.Load(myReader);
            int rowCount = rowCount = dataTable.Rows.Count;
            myReader = myCmd.ExecuteReader();
            
            int i = 0;

            if (myReader.HasRows)
            {
                
                while (i < rowCount) 
                {
                    myReader.Read();
                    
                    string strId = this.txtUser.Text;
                    string strPwd = this.txtPass.Text;
                    string memId = myReader["Email"].ToString();
                    string memPwd = myReader["PWD"].ToString();
                    if (strId == memId && strPwd == memPwd)
                    {
                        FormsAuthentication.RedirectFromLoginPage(strId, false, strPwd);
                        string custid = myReader["CustNumber"].ToString();
                        Session["custid"] = custid;
                        Session["userid"] = memId;
                        break;

                    }
                    else if (strId == "admin" && strPwd == "admin")
                    {
                        FormsAuthentication.RedirectFromLoginPage(strId, false, strPwd);
                        break;
                    }
                    
                    i++;
                }
                if (i == rowCount)
                        this.lblmessage.Text = "User Does not exist!";
            }   
    }
}