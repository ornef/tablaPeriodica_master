using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DLL
{
    public class ElementoDetalle
    {
        private int nroAtomico;
        private String nombre;

        public int NroAtomico
        {
            get { return nroAtomico; }
            set { nroAtomico = value; }
        }

        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }
    }
}
