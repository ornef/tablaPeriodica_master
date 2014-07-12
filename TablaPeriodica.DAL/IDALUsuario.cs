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
        void updateContraseniaUsuario(Usuario usuario);
        void insertUsuario(Usuario usuario);
        void deleteUsuario(String mail);

    }
}
