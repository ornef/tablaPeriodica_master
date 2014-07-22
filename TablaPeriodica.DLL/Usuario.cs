using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DLL
{
    public class Usuario
    {
        public static String PERFIL_ALUMNO = "ALU";
        public static String PERFIL_PROFESOR = "PRO";
        public static String PERFIL_ADMINISTRADOR = "ADM";

        private String nombre;
        private String apellido;
        private String tipoUsuario;
        private String mail;
        private String contrasenia;

        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public String Apellido
        {
            get { return apellido; }
            set { apellido = value; }
        }

        public String TipoUsuario
        {
            get { return tipoUsuario; }
            set { tipoUsuario = value; }
        }

        public String Mail
        {
            get { return mail; }
            set { mail = value; }
        }

        public String Contrasenia
        {
            get { return contrasenia; }
            set { contrasenia = value; }
        }

        public string getNombreCompleto()
        {
            return Nombre + " " + Apellido;
        }
    }
}
