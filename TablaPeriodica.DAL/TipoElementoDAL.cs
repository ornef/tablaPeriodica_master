using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Configuration;
using System.Data;

namespace TablaPeriodica.DAL
{
    public class TipoElementoDAL : Commons, IDALTipoElemento
    {
        public String getTipoById(int id)
        {
            String nombre = null;
             String query = "SELECT NOMBRE FROM TIPO_ELEMENTO WHERE ID = @idParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            IDataParameter param = cmd.CreateParameter();
            param.DbType = DbType.Int32;
            param.ParameterName = "@idParam";
            param.Value = id;
            cmd.Parameters.Add(param);
            try
            {
                con.Open();
                IDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    nombre = reader.GetString(reader.GetOrdinal("NOMBRE"));
                }
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return nombre;
        }
    }
}
