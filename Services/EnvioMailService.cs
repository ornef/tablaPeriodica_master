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
        public static Boolean SendMail(Usuario emisor, Usuario receptor, String server, String port)
        {
            try
            {
                MailMessage msg = new MailMessage();
                msg.To.Add(new MailAddress(receptor.Mail, receptor.getNombreCompleto()));
                msg.From = new MailAddress(emisor.Mail, "Administración Tabla Periódica");
                msg.Subject = "Tabla Periódica - Olvido de Contraseña";
                msg.Body = "Tu contraseña era: " + receptor.Contrasenia;
                msg.IsBodyHtml = true;

                SmtpClient client = new SmtpClient();
                client.UseDefaultCredentials = false;
                client.Credentials = new System.Net.NetworkCredential(emisor.Mail, emisor.Contrasenia);
                client.Port = Int32.Parse(port);
                client.Host = server;
                client.DeliveryMethod = SmtpDeliveryMethod.Network;
                client.EnableSsl = true;
                try
                {
                    client.Send(msg);

                }
                catch (Exception ex)
                {
                    throw;
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
