using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DLL;

namespace TablaPeriodica.DAL
{
    interface IDALElemento
    {
        ElementoTabla getElementDetails(int nroAtomico);
        void updateElemento(int nroAtomico, String detalles);
    }
}
