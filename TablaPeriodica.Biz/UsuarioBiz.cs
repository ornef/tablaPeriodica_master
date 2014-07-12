
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
    public class UsuarioBiz
    {
        private UsuarioDAL usuarioDAL = new UsuarioDAL();
        private static String LOGIN_EXMSG = "No se pudieron obtener los datos, por favor contáctese con soporte";

        public Usuario validarUsuario (String mail, String contrasenia) {
            try{
                Usuario usuario = usuarioDAL.getUsuario(mail);
                if (usuario != null && contrasenia.Equals(usuario.Contrasenia)){
                    return usuario;
                }
            } catch (DbException dbEx) {
                throw new BusinessException(LOGIN_EXMSG, dbEx);
            } catch (Exception genericEx) {
                throw new BusinessException(LOGIN_EXMSG, genericEx);
            }
            return null;
        }

        public Boolean existeUsuario(String mail) {
            Usuario usuario = usuarioDAL.getUsuario(mail);
            return usuario != null;
        }

        public void altaUsuarioAlumno(Usuario usuario)
        {
            usuario.TipoUsuario = "ALU";
            usuarioDAL.insertUsuario(usuario);
        }
    }
 }
