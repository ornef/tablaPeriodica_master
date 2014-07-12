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
    public partial class login : System.Web.UI.Page
    {
        LoginBiz loginBiz = new LoginBiz();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            List<MenuItemCustom> menu = new List<TablaPeriodica.DLL.MenuItemCustom>();
            try {
                Usuario usuario = loginBiz.validarUsuario(username.Text, password.Text);
                if (usuario != null && usuario.TipoUsuario.Equals("ALU"))
                    {
                        menu.Add(new MenuItemCustom("~/Views/publico/login.aspx", "Login"));
                        menu.Add(new MenuItemCustom("~/Views/administracion/Historial.aspx", "Alumno"));

                    }
                    else if (usuario != null && usuario.TipoUsuario.Equals("PRO"))
                    {
                        menu.Add(new MenuItemCustom("~/Views/publico/login.aspx", "Login"));
                        menu.Add(new MenuItemCustom("~/Views/administracion/Historial.aspx", "Historial"));
                    }
                    else {
                        menu.Add(new MenuItemCustom("~/Views/publico/login.aspx", "Login"));
                    }
                Session.Add("menu", menu);
                Response.Redirect("~/Views/publico/TablaPeriodica.aspx");
            } catch (BusinessException ex) { 
                //TODO
            }
        }

    }
}