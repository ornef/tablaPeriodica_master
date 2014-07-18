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
        private String detalle;
        private String url;

        public int NroAtomico
        {
            get { return nroAtomico; }
            set { nroAtomico = value; }
        }

        public String Detalle
        {
            get { return detalle; }
            set { detalle = value; }
        }

        public String Url
        {
            get { return url; }
            set { url = value; }
        }
    }
}
