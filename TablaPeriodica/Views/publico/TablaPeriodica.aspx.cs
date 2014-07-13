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
        private UsuarioBiz loginBiz = new UsuarioBiz();
        private PreguntaBiz pregBiz = new PreguntaBiz();
        private ElementoBiz elemBiz = new ElementoBiz();

        protected void Page_Load(object sender, EventArgs e)
        {
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

        protected void btncerrar_Click1(object sender, EventArgs e)
        {
            //se borra la cookie de autenticacion
            FormsAuthentication.SignOut();

            //se redirecciona al usuario a la pagina de login
            Response.Redirect(Request.UrlReferrer.ToString());
        }
    }
}