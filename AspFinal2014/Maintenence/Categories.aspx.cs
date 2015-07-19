using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maintenence_Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        this.lblerr.Text = "";
        this.lblGood.Text = "";
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        if (e.Exception != null)
        {
            e.ExceptionHandled = true;
            e.KeepInInsertMode = true;
            this.lblerr.Text = "Insert Cancelled<br>" +
                                    e.Exception.Message.ToString();
        }
        else
            this.lblGood.Text = "Successfull";
    }
}