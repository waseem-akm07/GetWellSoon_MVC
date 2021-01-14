using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["cod"] != null)
        {
            LinkButton1.Text = "Signout";
            lk2.Visible = false;
            lk3.Visible = true;
        }
        else
        {
            LinkButton1.Text = "Signin";
            lk2.Visible = true;
            lk3.Visible = false;
        }
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        if (LinkButton1.Text == "Signin")
            Response.Redirect("login.aspx");
        else
        {

        }
    }

    protected void lk3_Click(object sender, EventArgs e)
    {
        Response.Redirect("frmwrtrev.aspx");
    }
}
