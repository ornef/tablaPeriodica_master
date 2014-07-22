using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DLL
{
    public class Configuracion
    {
        private String id;
        private String valor;

        public String Id
        {
            get { return id; }
            set { id = value; }
        }

        public String Valor
        {
            get { return valor; }
            set { valor = value; }
        }
        
    }
}
