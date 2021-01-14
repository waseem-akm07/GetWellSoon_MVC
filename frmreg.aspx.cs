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
        nsgetwell.clsusr obj = new nsgetwell.clsusr();
        nsgetwell.clsusrprp objprp = new nsgetwell.clsusrprp();
        objprp.usreml = txteml.Text;
        objprp.usrphn = txtphn.Text;
        objprp.usrpwd = txtpwd.Text;
        objprp.usrregdat = DateTime.Now;
        objprp.usrrol = 'U';
        obj.Save_Rec(objprp);
        lblusr.Text = "Registration Successful";
    }
}