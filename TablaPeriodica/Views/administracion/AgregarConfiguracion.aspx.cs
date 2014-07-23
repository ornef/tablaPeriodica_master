using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Views.administracion
{
    public partial class AgregarConfiguracion : System.Web.UI.Page
    {
        ConfiguracionBiz confBiz = new ConfiguracionBiz();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void crearConf_Click(object sender, EventArgs e) {
            Configuracion conf = new Configuracion(txtId.Text, txtValor.Text);
            try
            {
                confBiz.addConfiguracion(conf);
                Response.Redirect("GestionConfiguracion.aspx");
            }
            catch (BusinessException exc) {
                lblMsgConfiguracion.Text = exc.Message;
            }
        
        }
    }
}