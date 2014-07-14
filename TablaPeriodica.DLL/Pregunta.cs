using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Threading.Tasks;

namespace TablaPeriodica.DLL
{
    public class Pregunta
    {
        private Int32 idMensaje;
        private String deUsuario;
        private String aUsuario;
        private String pregunta;
        private String respuesta;
        private DateTime fecha;
        private Int32 nroAtomico;

        public Pregunta() { }

        public Int32 IdMensaje
        {
            get { return idMensaje; }
            set { idMensaje = value; }
        }

        public String DeUsuario
        {
            get { return deUsuario; }
            set { deUsuario = value; }
        }

        public String AUsuario
        {
            get { return aUsuario; }
            set { aUsuario = value; }
        }

        public String PreguntaAlumno
        {
            get { return pregunta; }
            set { pregunta = value; }
        }

        public String Respuesta
        {
            get { return respuesta; }
            set { respuesta = value; }
        }

        public DateTime Fecha
        {
            get { return fecha; }
            set { fecha = value; }
        }

        public Int32 NroAtomico
        {
            get { return nroAtomico; }
            set { nroAtomico = value; }
        }
    }
}
