using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cart : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       // Session["custid"] = Session["custid"];
        //Session["cartnumber"] = Session["cartnumber"];
        int x = Convert.ToInt32(Session["cartnumber"]);
    }
        decimal decTotal = 0;
    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            decimal rowtotal = Convert.ToDecimal(DataBinder.Eval(e.Row.DataItem, "extension"));
            decTotal = decTotal + rowtotal;
        }
        else if (e.Row.RowType == DataControlRowType.Footer)
        {
            Label lbl = ((Label)e.Row.FindControl("lblTotalPrice"));
            lbl.Text = decTotal.ToString("c");
        }
    }
}