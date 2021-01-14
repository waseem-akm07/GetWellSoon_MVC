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
        nsgetwell.clsare obj = new nsgetwell.clsare();
        nsgetwell.clsareprp objprp = new nsgetwell.clsareprp();
        objprp.arectycod = Convert.ToInt32(drpcty.SelectedValue);
        objprp.arenam = txtare.Text;
        objprp.arelatlng = Hidden1.Value;
        if (btnsub.Text == "Submit")
            obj.Save_Rec(objprp);
        else
        {
            objprp.arecod = Convert.ToInt32(ViewState["cod"]);
            obj.Update_Rec(objprp);
            btnsub.Text = "Submit";
        }
        txtare.Text = String.Empty;
        lblcrd.Text = String.Empty;
        GridView1.DataBind();
    }

    protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {

    }

    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
      Int32 a = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex]
            [0]);
        nsgetwell.clsare obj = new nsgetwell.clsare();
        List<nsgetwell.clsareprp> k = obj.Find_Rec(a);
        txtare.Text = k[0].arenam;
        lblcrd.Text = k[0].arelatlng;
        Hidden1.Value = k[0].arelatlng;
        ViewState["cod"] = a;
        btnsub.Text = "Update";
        e.Cancel = true;
    }
}