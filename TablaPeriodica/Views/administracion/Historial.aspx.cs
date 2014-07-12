using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;

namespace TablaPeriodica.Views
{
    public partial class ElementoDetalle : System.Web.UI.Page
    {
        private PreguntaBiz pregBiz = new PreguntaBiz();

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Page.IsPostBack)
            {

            }
            else
            {
                Actualizar();
            }
        }

        private void Actualizar()
        {
            try
            {
                GridView1.DataSource = pregBiz.GetAllMessages();
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                //GestorErrores.Execute(ex);
                //throw;
            }
        }
        protected void btnActualizar_Click(object sender, EventArgs e)
        {
            Actualizar();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e){
        }
    }
}