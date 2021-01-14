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
        if(Page.IsPostBack==false)
        {
            nsgetwell.clsdoc obj = new nsgetwell.clsdoc();
            List<nsgetwell.clsdocprp> k = obj.Find_Rec(Convert.ToInt32
                                        (Session["cod"]));
            txtadd.Text = k[0].docadd;
            txtavltim.Text = k[0].docavltim;
            txtphn.Text = k[0].docappphn;
            txtqal.Text = k[0].docqal;
            Editor1.Content = k[0].docprf;
            Label1.Text = k[0].docaddcrd;
            Hidden1.Value = k[0].docaddcrd;
            ViewState["pic"] = k[0].docpic;

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        nsgetwell.clsdoc obj = new nsgetwell.clsdoc();
        nsgetwell.clsdocprp objprp = new nsgetwell.clsdocprp();
        objprp.docadd = txtadd.Text;
        objprp.docaddcrd = Hidden1.Value;
        objprp.docappphn = txtphn.Text;
        objprp.docavltim = txtavltim.Text;
        objprp.doccod = Convert.ToInt32(Session["cod"]);
        objprp.docprf = Editor1.Content;
        objprp.docqal = txtqal.Text;
        String s = FileUpload1.PostedFile.FileName;
        if (s != "")
        {
            s = s.Substring(s.LastIndexOf("."));
            objprp.docpic = s;
        }
        else
            objprp.docpic = ViewState["pic"].ToString();
        obj.Update_Rec(objprp);
        if (s != "")
            FileUpload1.PostedFile.SaveAs(Server.MapPath("../docpics") + "//" +
                Session["cod"].ToString() + s);

    }
}