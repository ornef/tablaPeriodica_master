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
    public partial class HistorialProfesor : System.Web.UI.Page
    {
           private PreguntaBiz pregBiz = new PreguntaBiz();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                fillGrilla();
            }
            
        }

        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            fillGrilla();
        }

        private void fillGrilla() {
            Usuario usr = (Usuario)Session["usuario"];
            if (usr != null)
            {
                if ("PRO".Equals(usr.TipoUsuario))
                {
                    GridView1.DataSource = pregBiz.getPreguntasProfesor(usr.Mail);
                    GridView1.DataBind();
                }
                else if ("ALU".Equals(usr.TipoUsuario))
                {
                    GridView1.DataSource = pregBiz.getPreguntasAlumno(usr.Mail);
                    GridView1.DataBind();
                }
            }
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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e) {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
     
      
            TextBox textRespuesta = (TextBox)row.Cells[6].Controls[0];
            String id = (String)row.Cells[1].Text;


            if (!"".Equals(textRespuesta.Text))
            {
                pregBiz.responderPregunta(Convert.ToInt32(id), textRespuesta.Text);

            }
            else {
                lblMsgHistorial.Text = "Se debe completar la respuesta";
            }
            GridView1.EditIndex = -1;
            fillGrilla();
        }
        
    }
    
}