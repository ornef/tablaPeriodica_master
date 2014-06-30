using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Views
{
    public partial class login : System.Web.UI.Page
    {
        LoginBiz loginBiz = new LoginBiz();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            try {
                Usuario usuario = loginBiz.validarUsuario(username.Text, password.Text);
                if (usuario != null) {
                    FormsAuthenticationTicket tkt;
                    String cook, sNombre;
                    HttpCookie ck;
                    sNombre = usuario.Nombre;
                    tkt = new FormsAuthenticationTicket(1, sNombre, DateTime.Now, DateTime.Now.AddMinutes(30), false, usuario.TipoUsuario);
                    cook = FormsAuthentication.Encrypt(tkt);
                    ck = new HttpCookie(FormsAuthentication.FormsCookieName, cook);
                    Page.Response.Cookies.Add(ck);
                }
            } catch (BusinessException ex) { 
                //TODO
            }
        }

    }
}