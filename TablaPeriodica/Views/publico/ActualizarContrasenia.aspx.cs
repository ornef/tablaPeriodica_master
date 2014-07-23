using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Views.publico
{
    public partial class ActualizarContraseña : System.Web.UI.Page
    {

        private UsuarioBiz userBiz = new UsuarioBiz();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void updatePsw_Click(object sender, EventArgs e)
        {
            Usuario usuario = (Usuario)Session["usuario"];
            if (usuario != null) { 
                String contrasenia = txtNuevaContrasenia.Text;
                userBiz.actualizarContrasenia(usuario, contrasenia);
                Response.Redirect("TablaPeriodica.aspx");
            }
        }
    }
}