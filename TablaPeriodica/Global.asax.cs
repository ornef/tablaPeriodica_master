using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using TablaPeriodica;

namespace TablaPeriodica
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            // Code that runs on application startup
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            AuthConfig.RegisterOpenAuth();
            RouteConfig.RegisterRoutes(RouteTable.Routes);
        }

        void Application_End(object sender, EventArgs e)
        {
            //  Code that runs on application shutdown

        }

        void Application_Error(object sender, EventArgs e)
        {
            // Code that runs when an unhandled error occurs

        }

        void Application_AuthenticateRequest(object sender, EventArgs e)
        {
            if (!(HttpContext.Current.User == null))
            {
                if (HttpContext.Current.User.Identity.AuthenticationType == "Forms")
                {
                    FormsAuthenticationTicket tkt;
                    tkt = FormsAuthentication.Decrypt(Request.Cookies[FormsAuthentication.FormsCookieName].Value);
                    String[] usuarios = { "" };
                    if (tkt.UserData.Equals("PROF"))
                    {
                        //usuario administrador
                        usuarios[0] = "Profesor";
                    }
                    else
                    {
                        if (tkt.UserData.Equals("ALU"))
                        {
                            //usuario normal
                            usuarios[0] = "Alumno";
                        }
                        else
                        {
                            //usuario mal autenticado
                            Response.Redirect("login.aspx");
                        }
                    }
                    //En este momento asignamos el rol que le ha correspondido
                    System.Web.Security.FormsIdentity id;
                    id = (System.Web.Security.FormsIdentity)HttpContext.Current.User.Identity;
                    HttpContext.Current.User = new System.Security.Principal.GenericPrincipal(id, usuarios);
                }
            }
        }
      
    }
}
