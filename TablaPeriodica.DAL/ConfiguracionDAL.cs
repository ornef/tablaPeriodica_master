using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DAL
{
    public class ConfiguracionDAL
    {
        public String getValue(String id) {
            String value = "";
            String query = "SELECT VALOR FROM CONFIGURACION where ID =@idParam ";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            IDataParameter param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@idParam";
            param.Value = id;
            cmd.Parameters.Add(param);
            try
            {
                con.Open();
                IDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    value = reader.GetString(reader.GetOrdinal("VALOR"));
                }
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return value;
        }
    }
}
