using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Members_ConfirmOrder : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["custid"] = Session["custid"];
        this.lblInv.Text = Convert.ToString(Session["invnumber"]);

    }
    
}