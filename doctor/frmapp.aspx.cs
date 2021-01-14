using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class doctor_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        if(e.Row.RowType==DataControlRowType.DataRow)
        {
            char sts = Convert.ToChar(GridView1.DataKeys[e.Row.RowIndex][1]);
            LinkButton lk1 = (LinkButton)(e.Row.FindControl("lk1"));
            LinkButton lk2 = (LinkButton)(e.Row.FindControl("lk2"));
            if (sts=='N')
            {
                lk1.Visible = true;
                lk2.Visible = true;
            }
            else
            {
                Label lbl1 = (Label)(e.Row.FindControl("lbl1"));
                if (sts == 'A')
                    lbl1.Text = "Approved";
                else if (sts == 'R')
                    lbl1.Text = "Rejected";
                lk1.Visible = false;
                lk2.Visible = false;
            }
        }
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        nsgetwell.clsappreq obj = new nsgetwell.clsappreq();
        nsgetwell.clsappreqprp objprp = new nsgetwell.clsappreqprp();
        objprp.appreqcod = Convert.ToInt32(GridView1.DataKeys
                                    [e.NewEditIndex][0]);
        objprp.appreqsts = 'A';
        obj.Update_Rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsgetwell.clsappreq obj = new nsgetwell.clsappreq();
        nsgetwell.clsappreqprp objprp = new nsgetwell.clsappreqprp();
        objprp.appreqcod = Convert.ToInt32(GridView1.DataKeys
                                    [e.RowIndex][0]);
        objprp.appreqsts = 'R';
        obj.Update_Rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }
}