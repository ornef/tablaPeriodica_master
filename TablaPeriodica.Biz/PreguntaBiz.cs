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
    public class PreguntaBiz
    {
        private UsuarioDAL usuarioDAL = new UsuarioDAL();
        private PreguntaDAL pregDAL = new PreguntaDAL();
        private static String PREG_EXMSG = "No se pudo enviar el mensaje, por favor contáctese con soporte";

              
        public void enviarMensaje(String mensaje, Usuario usuario, String elemento, String profesor) {
            try
            {
                Pregunta preg = new Pregunta();
                preg.Mensaje = mensaje;
                preg.NroAtomico = Int32.Parse(elemento);
                preg.Fecha = DateTime.Now;
                preg.DeUsuario = usuario.Mail;
                preg.AUsuario = profesor;
                pregDAL.addPregunta(preg);
            }
            catch (DbException dbEx)
            {
                throw new BusinessException(PREG_EXMSG, dbEx);
            }
            catch (Exception genericEx)
            {
                throw new BusinessException(PREG_EXMSG, genericEx);
            }
        }

        public List<Pregunta> GetAllMessages()
        {
            try
            {
                List<Pregunta> listPreg = new List<Pregunta>();
                Pregunta preg = new Pregunta();
                preg.IdMensaje = 1;
                preg.DeUsuario = "Juan";
                preg.AUsuario = "Ana";
                preg.Fecha = DateTime.Now;
                preg.Mensaje = "Pregunta";
                preg.NroAtomico = 1;

                listPreg.Add(preg);
                return listPreg;
            }
            catch (Exception ex)
            {
                throw;
            }

        }

    }
}
