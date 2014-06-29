using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.Biz
{
    public class BusinessException : Exception {

        public BusinessException (String mensaje) 
            :base (mensaje) { }

        public BusinessException(String mensaje, Exception innerEx) 
            : base(mensaje, innerEx){}
    
    }
}
