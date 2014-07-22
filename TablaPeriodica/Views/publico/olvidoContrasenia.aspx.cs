using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Services;
using TablaPeriodica.Biz;
using TablaPeriodica.DAL;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Views.publico
{
    public partial class olvidoContrasenia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnEnviarContrasenia_Click(object sender, EventArgs e)
        {

            UsuarioDAL usuarioDAL = UsuarioDAL.getInstance();
            Usuario usuario = usuarioDAL.getUsuario(txtEmail.Text);
            if (usuario != null)
            {
                EnvioMailService.SendMail(usuario);
            }
            else {
                lblMsgOlvido.Text = "No se encuentra registrado el mail ingresado.";
            }

        }
    }
}