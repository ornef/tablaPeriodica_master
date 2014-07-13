using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DLL
{
    public class ElementoTabla
    {
        private String simbolo;
        private int nroAtomico;
        private String nombre;
        private String valencia;
        private decimal electronegatividad;
        private String confElectronica;
        private decimal masaAtomica;
        private String detalles;
        private String imagen;
        private decimal ptoEbullicion;
        private decimal ptoFusion;
        private decimal densidad;

        public String Simbolo
        {
            get { return simbolo; }
            set { simbolo = value; }
        }

        public String Nombre
        {
            get { return nombre; }
            set { nombre = value; }
        }

        public int NroAtomico
        {
            get { return nroAtomico; }
            set { nroAtomico = value; }
        }

        public String Valencia
        {
            get { return valencia; }
            set { valencia = value; }
        }

        public decimal Electronegatividad
        {
            get { return electronegatividad; }
            set { electronegatividad = value; }
        }

        public String ConfElectronica
        {
            get { return confElectronica; }
            set { confElectronica = value; }
        }

        public decimal MasaAtomica
        {
            get { return masaAtomica; }
            set { masaAtomica = value; }
        }

        public String Detalles
        {
            get { return detalles; }
            set { detalles = value; }
        }

        public String Imagen
        {
            get { return imagen; }
            set { imagen = value; }
        }

        public decimal PtoEbullicion
        {
            get { return ptoEbullicion; }
            set { ptoEbullicion = value; }
        }

        public decimal PtoFusion
        {
            get { return ptoFusion; }
            set { ptoFusion = value; }
        }

        public decimal Densidad
        {
            get { return densidad; }
            set { densidad = value; }
        }
    }
}

