using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;
using TablaPeriodica.DAL;
using TablaPeriodica.DLL;

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
            lstProfesores.DataSource = loginBiz.getProfesores();
            lstProfesores.DataBind();

            if (!IsPostBack)
            {
                if (Request.QueryString["nroAtomico"] != null)
                {
                    try
                    {
                        String idElemento = (String)Request.QueryString["nroAtomico"];
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
                        lblMsgMostrarElemento.Text = ex.Message;
                    }
                }
            }
        }

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            txtDetalles.Enabled = true;
            txtDetalles.ReadOnly = false;
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int nroAtomico = int.Parse(lblNroAtomico.Text);
            String detalles = txtDetalles.Text;
            elemBiz.updateElemento(nroAtomico, detalles);
            txtDetalles.Enabled = false;
            txtDetalles.ReadOnly = true;
        }
        protected void btnPreguntar_Click(object sender, EventArgs e)
        {
            lblPregPregunta.Visible = true;
            lblPregProfesor.Visible = true;
            lstProfesores.Visible = true;
            txtMessage.Visible = true;
            btnEnviar.Visible = true;
            lblMsgMostrarElemento.Text = "";
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            if (!"".Equals(txtMessage.Text.Trim()) && !"".Equals(lstProfesores.SelectedValue))
            {
                try
                {
                    Usuario usr = (Usuario)Session["usuario"];
                    pregBiz.enviarMensaje(txtMessage.Text, usr, lblNroAtomico.Text, lstProfesores.SelectedValue);
                    lblPregPregunta.Visible = false;
                    lblPregProfesor.Visible = false;
                    lstProfesores.Visible = false;
                    txtMessage.Text = "";
                    txtMessage.Visible = false;
                    btnEnviar.Visible = false;
                    lblMsgMostrarElemento.Text = "Tu pregunta ha sido enviada!";
                    
                }
                catch (BusinessException exc)
                {
                    lblMsgMostrarElemento.Text = exc.Message;
                }
            }
            else 
            {
                lblMsgMostrarElemento.Text = "Falta completar la pregunta o seleccionar el profesor";
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