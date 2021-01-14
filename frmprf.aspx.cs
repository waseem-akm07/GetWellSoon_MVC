using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void DataList1_EditCommand(object source, DataListCommandEventArgs e)
    {
        Session["dcod"] = Request.QueryString["dcod"];
        if(Session["cod"]==null)
        {
            Response.Redirect("login.aspx");
        }
        else
        {
            Response.Redirect("frmappreq.aspx");
        }
    }

    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}