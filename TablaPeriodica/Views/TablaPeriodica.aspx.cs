using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;

namespace TablaPeriodica.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private LoginBiz loginBiz = new LoginBiz();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            try
            {
                if (loginBiz.validarUsuario(txtUsuario.Text, txtContrasenia.Text))
                {
                    Session.Add("logueado", true);
                }
                else
                {
                    lblMensaje.Text = "El usuario o contraseña ingresado es incorrecto.";
                    Session.Add("logueado", true);
                }
            }
            catch (BusinessException exc)
            {
                lblMensaje.Text = exc.Message;
            }
        }
      
    }
}