using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Views
{
    public partial class ElementoDetalle : System.Web.UI.Page
    {
        private PreguntaBiz pregBiz = new PreguntaBiz();

        protected void Page_Load(object sender, EventArgs e)
        {

            fillGrilla();
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
    }
}