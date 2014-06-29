
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DLL;
using TablaPeriodica.DAL;
using System.Data.Common;

namespace TablaPeriodica.Biz
{
    public class LoginBiz
    {
        private UsuarioDAL usuarioDAL = new UsuarioDAL();
        private static String LOGIN_EXMSG = "No se pudieron obtener los datos, por favor contáctese con soporte";

        public Boolean validarUsuario (String mail, String contrasenia) {
            try{
                Usuario usuario = usuarioDAL.getUsuario(mail);
                if (usuario != null) {
                    return contrasenia.Equals(usuario.Contrasenia);
                }
                return false;
            } catch (DbException dbEx) {
                throw new BusinessException(LOGIN_EXMSG, dbEx);
            } catch (Exception genericEx) {
                throw new BusinessException(LOGIN_EXMSG, genericEx);
            }
       }
    }
}
