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
        private String masaAtomica;
        private int tipo;
        private int grupo;
        private int periodo;
        
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

        public String MasaAtomica
        {
            get { return masaAtomica; }
            set { masaAtomica = value; }
        }


        public int Tipo
        {
            get { return tipo; }
            set { tipo = value; }
        }

        public int Grupo
        {
            get { return grupo; }
            set { grupo = value; }
        }

        public int Periodo
        {
            get { return periodo; }
            set { periodo = value; }
        }
    }
}

