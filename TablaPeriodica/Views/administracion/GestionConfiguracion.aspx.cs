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
    public partial class GestionConfiguracion : System.Web.UI.Page
    {
        private ConfiguracionBiz confBiz = new ConfiguracionBiz();

        protected void Page_Load(object sender, EventArgs e)
        {
            fillGrilla();
        }

        private void fillGrilla()
        {
            Usuario usr = (Usuario)Session["usuario"];
            if (usr != null)
            {
                if (Usuario.PERFIL_ADMINISTRADOR.Equals(usr.TipoUsuario))
                {
                    GridView1.DataSource = confBiz.getConfiguraciones();
                    GridView1.DataBind();
                }
            }
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            fillGrilla();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            fillGrilla();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            fillGrilla();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];


            TextBox textValue = (TextBox)row.Cells[2].Controls[0];
            String id = (String)row.Cells[1].Text;


            if (!"".Equals(textValue.Text))
            {
                confBiz.updateConfiguracion(id, textValue.Text);

            }
            else
            {
                lblMsgHistorial.Text = "Se debe completar el valor de la configuración";
            }
            GridView1.EditIndex = -1;
            fillGrilla();
        }
    }
}