using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnsub_Click(object sender, EventArgs e)
    {
        nsgetwell.clscty obj = new nsgetwell.clscty();
        nsgetwell.clsctyprp objprp = new nsgetwell.clsctyprp();
        objprp.ctynam = txtctynam.Text;
        if (btnsub.Text == "Submit")
            obj.Save_Rec(objprp);
        else
        {
            objprp.ctycod = Convert.ToInt32(ViewState["cod"]);
            obj.Update_Rec(objprp);
            btnsub.Text = "Submit";
        }
        txtctynam.Text = String.Empty;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        nsgetwell.clscty obj = new nsgetwell.clscty();
        nsgetwell.clsctyprp objprp = new nsgetwell.clsctyprp();
        objprp.ctycod = Convert.ToInt32(GridView1.DataKeys
            [e.RowIndex][0]);
        obj.Delete_Rec(objprp);
        GridView1.DataBind();
        e.Cancel = true;
    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        Int32 a = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex][0]);
        nsgetwell.clscty obj = new nsgetwell.clscty();
        List<nsgetwell.clsctyprp> k = obj.Find_Rec(a);
        txtctynam.Text = k[0].ctynam;
        btnsub.Text = "Update";
        ViewState["cod"] = a;
        e.Cancel = true;
    }
}