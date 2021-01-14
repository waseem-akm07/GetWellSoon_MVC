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

    protected void btn1_Click(object sender, EventArgs e)
    {
        nsgetwell.clsrev obj = new nsgetwell.clsrev();
        nsgetwell.clsrevprp objprp = new nsgetwell.clsrevprp();
        objprp.revappreqcod = Convert.ToInt32(drpapp.SelectedValue);
        objprp.revdat = DateTime.Now;
        objprp.revdsc = txtdsc.Text;
        objprp.revscr = Convert.ToInt32(Rating1.CurrentRating);
        obj.Save_Rec(objprp);
        txtdsc.Text = String.Empty;
        lblusr.Text = "Review stored successfully.";
    }
}