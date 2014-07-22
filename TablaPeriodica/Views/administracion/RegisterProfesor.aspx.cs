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
    public partial class RegisterProfesor : System.Web.UI.Page
    {
        UsuarioBiz usuarioBiz = new UsuarioBiz();

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void crearUsuario_Click(object sender, EventArgs e)
        {

            if (entradasValidas(txtApellido.Text, txtNombre.Text, txtEmail.Text, txtContrasenia.Text))
            {

                Usuario usuario = new Usuario();
                usuario.Apellido = txtApellido.Text;
                usuario.Nombre = txtNombre.Text;
                usuario.Mail = txtEmail.Text;
                usuario.Contrasenia = txtContrasenia.Text;

                if (usuarioBiz.existeUsuario(usuario.Mail))
                {
                    lblMsgCrearCuenta.Text = "Ya se encuentra registrado un usuario con ese Mail";
                }
                else
                {
                    try
                    {
                        usuarioBiz.altaUsuarioProfesor(usuario);
                        Response.Redirect("~/Views/publico/TablaPeriodica.aspx");
                    }
                    catch (BusinessException ex)
                    {
                        lblMsgCrearCuenta.Text = ex.Message;
                    }
                }
            }

        }

        private bool entradasValidas(string apellido, string nombre, string mail, string contrasenia)
        {
            if (apellido.Equals("") || nombre.Equals("") || contrasenia.Equals("") || mail.Equals(""))
            {
                lblMsgCrearCuenta.Text = "Falta completar datos.";
                return false;
            }
            else if (!mail.Contains("."))
            {
                lblMsgCrearCuenta.Text = "El formato del mail es inválido.";
                return false;
            }
            return true;
        }
    }
}