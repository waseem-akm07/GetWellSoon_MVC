using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
public partial class admin_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        //    1) insert record to tbusr
        nsgetwell.clsusr obj = new nsgetwell.clsusr();
        nsgetwell.clsusrprp objprp = new nsgetwell.clsusrprp();
        objprp.usreml = TextBox2.Text;
        objprp.usrphn = TextBox3.Text;
        objprp.usrregdat = DateTime.Now;
        objprp.usrrol = 'D';
        String pwd = Guid.NewGuid().ToString();
        pwd = pwd.Substring(0, 10);
        objprp.usrpwd = pwd;
        Int32 a = obj.Save_Rec(objprp);
        //  2) fetch usrcod and insert partial details to tbdoc
        nsgetwell.clsdoc obj1 = new nsgetwell.clsdoc();
        nsgetwell.clsdocprp objprp1 = new nsgetwell.clsdocprp();
        objprp1.docnam = TextBox1.Text;
        objprp1.docarecod = Convert.ToInt32(DropDownList2.SelectedValue);
        objprp1.docspccod = Convert.ToInt32(DropDownList3.SelectedValue);
        objprp1.docusrcod = a;
        obj1.Save_Rec(objprp1);
        // 3) send email to doctor containing login info
        String bdy = "<a href=index.aspx> Click Here</a> to login to your account." +
            "<b>Email:</b>"+TextBox2.Text +"<br><b>Password:</b> " + pwd;
        MailMessage mm = new MailMessage("admin@getwellsoon.com", TextBox2.Text,
            "Login Information", bdy);
        mm.IsBodyHtml = true;
        SmtpClient c = new SmtpClient("mail.connectzone.in", 25);
        c.Send(mm);
        Response.Redirect("frmdoc.aspx");
    }
}