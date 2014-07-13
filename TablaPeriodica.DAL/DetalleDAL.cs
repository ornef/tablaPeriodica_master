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
    public class DetalleDAL : Commons, IDALDetalle
    {
        public String getDetalleByNroAtomico(int nroAtomico)
        {
            String detalle = null;
            String query = "SELECT DETALLE FROM DETALLE WHERE NRO_ATOMICO = @nroAtomicoParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            IDataParameter param = cmd.CreateParameter();
            param.DbType = DbType.Int32;
            param.ParameterName = "@nroAtomicoParam";
            param.Value = nroAtomico;
            cmd.Parameters.Add(param);
            try
            {
                con.Open();
                IDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    detalle = reader.GetString(reader.GetOrdinal("DETALLE"));
                }
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return detalle;
        }
    }
}
