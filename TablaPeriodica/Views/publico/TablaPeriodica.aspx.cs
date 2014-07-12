﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using TablaPeriodica.Biz;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Views
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        private LoginBiz loginBiz = new LoginBiz();
        private PreguntaBiz pregBiz = new PreguntaBiz();
        private ElementoBiz elemBiz = new ElementoBiz();

        protected void Page_Load(object sender, EventArgs e)
        {
            // Manually register the event-handling method for
            // the Click event of the Button control.
            btnPreguntar.Click += new EventHandler(this.btnPreguntar_Click);
            //si se autentica mostramos mensaje y nombre de usuario
            if (HttpContext.Current.User.Identity.IsAuthenticated) {
                Response.Write("Bienvenido : " + User.Identity.Name);
            }
            List<MenuItemCustom> menu = (List<MenuItemCustom>)Session["menu"];
        
                if (menu == null) {
                    MenuItem itemLogin = new MenuItem();
                    itemLogin.Text = "Login";
                    itemLogin.NavigateUrl = "~/Views/publico/login.aspx";
                    Menu1.Items.Add(itemLogin);
               
                } else {
                    foreach (MenuItemCustom item in menu)
                    {
                        MenuItem itemLogin = new MenuItem();
                        itemLogin.Text = item.Text;
                        itemLogin.NavigateUrl = item.Url;
                        Menu1.Items.Add(itemLogin);
                    }
                }         
        }

        

        protected void btnEditar_Click(object sender, EventArgs e)
        {
            txtDetalles.Enabled = true;
        }
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            int nroAtomico = int.Parse(txtNroAtomico.Text);
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

        protected void inlineElemento_Click(object sender, EventArgs e)
        {
            txtSimbolo.Enabled = false;
            txtNroAtomico.Enabled = false;
            txtNombre.Enabled = false;
            txtValencia.Enabled = false;
            txtElectronegatividad.Enabled = false;
            txtConfElec.Enabled = false;
            txtMasa.Enabled = false;
            txtDetalles.Enabled = false;
            //Si el alumno esta logueado mostrar componentes para enviar mensaje
            //Obtener rol de usuario en sesion para ocultar/mostrar componentes
            Usuario usr = new Usuario(); //obtener usuario de la sesion
            if("ALU".Equals(usr.TipoUsuario)){
                btnEditar.Visible = false;
                btnGuardar.Visible = false;
                btnPreguntar.Visible = true;

            }else if ("PRO".Equals(usr.TipoUsuario)){
                 btnEditar.Visible = true;
                 btnGuardar.Visible = true;
                 btnPreguntar.Visible = false;

            }
           
            FillTablaElemento();
        }

        private void FillTablaElemento()
        {
            int nroAtomico = 1; //TO DO: Obtener el nroAtomico en el click on del elemento
            ElementoTabla elemDetail = elemBiz.getElementDetails(nroAtomico);
            txtSimbolo.Text = elemDetail.Simbolo;
            txtNroAtomico.Text = elemDetail.NroAtomico.ToString();
            txtNombre.Text = elemDetail.Nombre;
            txtValencia.Text = elemDetail.Valencia;
            txtElectronegatividad.Text = elemDetail.Electronegatividad;
            txtConfElec.Text = elemDetail.ConfElectronica;
            txtMasa.Text = elemDetail.MasaAtomica;
            txtDetalles.Text = elemDetail.Detalles;
        }

        protected void btncerrar_Click1(object sender, EventArgs e)
        {
            //se borra la cookie de autenticacion
            FormsAuthentication.SignOut();

            //se redirecciona al usuario a la pagina de login
            Response.Redirect(Request.UrlReferrer.ToString());
        }
    }
}