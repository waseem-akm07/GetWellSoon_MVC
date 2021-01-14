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
        if(Page.IsPostBack ==false)
        {
            for(int i=8;i<=19;i++)
            {
                DropDownList1.Items.Add(i.ToString());
            }
            for(int i=0;i<=45;i+=15)
            {
                DropDownList2.Items.Add(i.ToString());
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsgetwell.clsappreq obj = new nsgetwell.clsappreq();
        nsgetwell.clsappreqprp objprp = new nsgetwell.clsappreqprp();
        objprp.appreqdat = Convert.ToDateTime(TextBox1.Text);
        objprp.appreqdoccod = Convert.ToInt32(Session["dcod"]);
        objprp.appreqdsc = TextBox2.Text;
        objprp.appreqtim = DropDownList1.SelectedValue + ":" 
            + DropDownList2.SelectedValue;
        objprp.apprequsrcod = Convert.ToInt32(Session["cod"]);
        objprp.appreqsts = 'N';
        obj.Save_Rec(objprp);
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        DropDownList1.SelectedIndex = -1;
        DropDownList2.SelectedIndex = -1;
        lblmsg.Text = "Appointment Requested Successfully.Our representative will contact you soon.";
    }
}