﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TablaPeriodica.Views.publico
{
    public partial class logOut : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session.Remove("menu");
            Session.Remove("usuario");
            Response.Redirect("~/Views/publico/TablaPeriodica.aspx");
        }
    }
}