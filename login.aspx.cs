using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn1_Click(object sender, EventArgs e)
    {
        nsgetwell.clsusr obj = new nsgetwell.clsusr();
        Int32 cod;
        char rol;
        cod = obj.logincheck(txteml.Text, txtpwd.Text, out rol);
        if (cod == -1)
            lblusr.Text = "Email Password Incorrect";
        else
        {
            FormsAuthenticationTicket tk = new FormsAuthenticationTicket
               (1,txteml.Text, DateTime.Now, DateTime.Now
               .AddHours(2), false, rol.ToString());
            String st = FormsAuthentication.Encrypt(tk);
            HttpCookie ck = new HttpCookie(
                FormsAuthentication.FormsCookieName, st);
            Response.Cookies.Add(ck);

            Session["cod"] = cod;
            if (rol == 'A')
                Response.Redirect("admin/frmcty.aspx");
            else if (rol == 'D')
                Response.Redirect("doctor/frmprf.aspx");
            else
            {
                if (Session["dcod"] == null)
                    Response.Redirect("index.aspx");
                else
                    Response.Redirect("frmappreq.aspx");
            }
        }
    }
}