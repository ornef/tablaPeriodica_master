using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;
using TablaPeriodica.DLL;
using TablaPeriodica.DAL;

namespace TablaPeriodica.Views.publico
{
    public partial class mostrarElemento : System.Web.UI.Page
    {

        private UsuarioBiz loginBiz = new UsuarioBiz();
        private PreguntaBiz pregBiz = new PreguntaBiz();
        private ElementoBiz elemBiz = new ElementoBiz();
        private TipoElementoDAL tipoDAL = new TipoElementoDAL();
        private DetalleDAL detalleDAL = new DetalleDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Manually register the event-handling method for
            // the Click event of the Button control.
            btnPreguntar.Click += new EventHandler(this.btnPreguntar_Click);
            if (!IsPostBack)
            {
                if (Request.QueryString["nroAtomico"] != null)
                {
                    try
                    {
                        String idElemento = (String)Request.QueryString["nroAtomico"];
                        //txtSimbolo.Enabled = false;
                        //txtNroAtomico.Enabled = false;
                        //txtNombre.Enabled = false;
                        //txtValencia.Enabled = false;
                        //txtElectronegatividad.Enabled = false;
                        //txtConfElec.Enabled = false;
                        //txtMasa.Enabled = false;
                        txtDetalles.Enabled = false;
                        //Si el alumno esta logueado mostrar componentes para enviar mensaje
                        //Obtener rol de usuario en sesion para ocultar/mostrar componentes
                        Usuario usr = (Usuario)Session["usuario"];
                        if (usr != null)
                        {
                            if ("ALU".Equals(usr.TipoUsuario))
                            {
                                btnEditar.Visible = false;
                                btnGuardar.Visible = false;
                                btnPreguntar.Visible = true;

                            }
                            else if ("PRO".Equals(usr.TipoUsuario))
                            {
                                btnEditar.Visible = true;
                                btnGuardar.Visible = true;
                                btnPreguntar.Visible = false;

                            }
                        }
                        else
                        {
                            btnEditar.Visible = false;
                            btnGuardar.Visible = false;
                            btnPreguntar.Visible = false;
                        }

                        FillTablaElemento(idElemento);

                    }
                    catch (Exception ex)
                    {

                    }
                }
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            txtDetalles.Enabled = true;
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int nroAtomico = int.Parse(lblNroAtomico.Text);
            String detalles = txtDetalles.Text;
            elemBiz.updateElemento(nroAtomico, detalles);
        }
        protected void btnPreguntar_Click(object sender, EventArgs e)
        {

            txtMessage.Visible = true;
            btnEnviar.Visible = true;
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (!"".Equals(txtMessage.Text.Trim()))
            {
                try
                {
                    //Ver como obtener los valores de los campos hidden
                    pregBiz.enviarMensaje(txtMessage.Text, hiddenDisplayName.Value, hiddenElemento.Value);
                }
                catch (BusinessException exc)
                {
                    throw;
                }
            }
        }

        private void FillTablaElemento(String nroAtomico)
        {
            ElementoTabla elemDetail = elemBiz.getElementDetails(Convert.ToInt32(nroAtomico));
            String tipo = tipoDAL.getTipoById(elemDetail.Tipo);
            String detalle = detalleDAL.getDetalleByNroAtomico(elemDetail.NroAtomico);
            lblSimbolo.Text = elemDetail.Simbolo;
            lblNroAtomico.Text = elemDetail.NroAtomico.ToString();
            lblNombre.Text = elemDetail.Nombre;
            lblMasa.Text = elemDetail.MasaAtomica.ToString();
            lblTipo.Text = tipo;
            lblGrupo.Text = elemDetail.Grupo.ToString();
            lblPeriodo.Text = elemDetail.Periodo.ToString();
            txtDetalles.Text = detalle;
        }

        protected void btncerrar_Click1(object sender, EventArgs e)
        {
            //se borra la cookie de autenticacion
            //FormsAuthentication.SignOut();

            //se redirecciona al usuario a la pagina de login
            Response.Redirect(Request.UrlReferrer.ToString());
        }
    }
}