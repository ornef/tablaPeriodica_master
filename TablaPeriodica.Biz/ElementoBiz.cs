using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DAL;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Biz
{
    public class ElementoBiz
    {
        private ElementoDAL elemDAL = new ElementoDAL();

        public ElementoTabla getElementDetails(int nroAtomico)
        {
            ElementoTabla elemDetail = new ElementoTabla();
            return  elemDetail = elemDAL.getElementDetails(nroAtomico);
        }

        public void updateElemento(int nroAtomico, String detalles)
        {
            elemDAL.updateElemento(nroAtomico, detalles);
        }
    }
}
