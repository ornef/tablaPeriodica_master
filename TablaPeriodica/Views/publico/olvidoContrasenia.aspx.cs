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
            Usuario receptor = usuarioDAL.getUsuario(txtEmail.Text);
            if (receptor != null)
            {
                Usuario emisor = usuarioDAL.getUsuarioAdmin();
                String server = ConfiguracionDAL.getInstance().getValue("smtp.server");
                String port = ConfiguracionDAL.getInstance().getValue("smtp.server.port");
                if ("".Equals(server) || "".Equals(port)) {
                    lblMsgOlvido.Text = "No se encuentra configurado el envio de mails. Contactar al administrador.";    
                }
                if (EnvioMailService.SendMail(emisor, receptor, server, port))
                {
                    lblMsgOlvido.Text = "Se ha enviado un mail con su contraseña.";
                }
                else {
                    lblMsgOlvido.Text = "No se pudo enviar el mail, inténtelo más tarde.";
                }
            }
            else {
                lblMsgOlvido.Text = "No se encuentra registrado el mail ingresado.";
            }

        }
    }
}