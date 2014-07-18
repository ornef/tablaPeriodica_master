using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Configuration;
using System.Data;
using TablaPeriodica.DLL;


namespace TablaPeriodica.DAL
{
    public class DetalleDAL : Commons, IDALDetalle
    {
        public ElementoDetalle getDetalleByNroAtomico(int nroAtomico)
        {
            ElementoDetalle detalle = null;
            String query = "SELECT DETALLE, URL FROM DETALLE WHERE NRO_ATOMICO = @nroAtomicoParam";
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
                    detalle = new ElementoDetalle();
                    //detalle.NroAtomico = reader.GetInt32(reader.GetOrdinal("NRO_ATOMICO"));
                    detalle.Detalle = reader.GetString(reader.GetOrdinal("DETALLE"));
                    detalle.Url = reader.GetString(reader.GetOrdinal("URL"));
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
