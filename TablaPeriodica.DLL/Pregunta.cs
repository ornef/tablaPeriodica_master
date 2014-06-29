using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DLL
{
    class Pregunta
    {
        private Usuario alumno;
        private String preg;
        private String respuesta;

        public Usuario Alumno
        {
            get { return alumno; }
            set { alumno = value; }
        }

        public String Preg
        {
            get { return preg; }
            set { preg = value; }
        }

        public String Respuesta
        {
            get { return respuesta; }
            set { respuesta = value; }
        }
    }
}
