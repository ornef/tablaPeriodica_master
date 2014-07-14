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
        List<Pregunta> getPreguntasParaProfesor(String mailProfe);
        void addPregunta(Pregunta pregunta);

    }
}
