using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DAL;
using TablaPeriodica.DLL;

namespace TablaPeriodica.Biz
{
    public class ConfiguracionBiz
    {
        public List<Configuracion> getConfiguraciones() {
            return ConfiguracionDAL.getInstance().getConfiguraciones();
        }

        public void updateConfiguracion(String id, String valor) {
            ConfiguracionDAL.getInstance().insertConfiguration(id, valor);
        }

        public void addConfiguracion(Configuracion configuracion) {
            String value = ConfiguracionDAL.getInstance().getValue(configuracion.Id);
            if (value != null)
            {
                ConfiguracionDAL.getInstance().insertConfiguration(configuracion.Id, configuracion.Valor);
            }
            else {
                throw new BusinessException("El ID de configuración ya se encuentra registrado");
            }
        }
    }
}
