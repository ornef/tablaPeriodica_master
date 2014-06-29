using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DLL;

namespace TablaPeriodica.DAL
{
    interface IDALUsuario
    {
        Usuario getUsuario(String mail);
        void addUsuario(Usuario usuario);
        void updateContraseniaUsuario(Usuario usuario);
        void deleteUsuario(Usuario usuario);
    }
}
