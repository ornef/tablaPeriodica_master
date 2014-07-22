using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Net.Mail;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DLL;

namespace Services
{
    public class EnvioMailService
    {
        public static Boolean SendMail(Usuario usuario)
        {
            try
            {

                MailMessage msg = new MailMessage();
                msg.To.Add(new MailAddress("orne.ferrari@hotmail.com", usuario.getNombreCompleto()));
                msg.From = new MailAddress(ConfigurationSettings.AppSettings["mail"].ToString(), "Administración");
                msg.Subject = "Tabla Periódica - Olvido de Contraseña";
                msg.Body = "Tu contraseña era: " + SeguridadService.DesEncriptar(usuario.Contrasenia);
                msg.IsBodyHtml = true;

                SmtpClient client = new SmtpClient();
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential(ConfigurationSettings.AppSettings["mail"].ToString(), "870621345s");
                client.Port = 587;
                client.Host = "smtp.office365.com";
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.EnableSsl = true;
                try
                {
                    client.Send(msg);

                }
                catch (Exception ex)
                {

                }

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
