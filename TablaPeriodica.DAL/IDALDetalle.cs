using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DAL
{
    interface IDALDetalle
    {
        String getDetalleByNroAtomico(int nroAtomico);
    }
}
