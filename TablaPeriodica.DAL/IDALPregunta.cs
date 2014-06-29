using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DLL;

namespace TablaPeriodica.DAL
{
    interface IDALPregunta
    {
        Pregunta getPregunta(Int32 idMensaje);
        void addPregunta(Pregunta pregunta);

    }
}
