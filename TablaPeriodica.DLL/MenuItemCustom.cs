using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DLL
{
    public class MenuItemCustom
    {
        private String text;
        private String url;

        public String Text
        {
            get { return text; }
            set { text = value; }
        }

        public String Url
        {
            get { return url; }
            set { text = value; }
        }

        public MenuItemCustom(String url, String text) {
            this.url = url;
            this.text = text;
        }

    }
}
