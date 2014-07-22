using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DLL;
using System.Data.SqlClient;
using System.Data.Common;
using System.Configuration;
using System.Data;

namespace TablaPeriodica.DAL
{
    public class ElementoDAL: Commons, IDALElemento
    {
        private static volatile ElementoDAL instance;
        private static object syncRoot = new Object();

        public ElementoTabla getElementDetails(int nroAtomico)
        {
            ElementoTabla elemDetail = new ElementoTabla();
            String query = "SELECT * FROM ELEMENTO WHERE NRO_ATOMICO = @nroAtomicoParam";
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
                    elemDetail.NroAtomico = reader.GetInt32(reader.GetOrdinal("NRO_ATOMICO"));
                    elemDetail.Simbolo = reader.GetString(reader.GetOrdinal("SIMBOLO"));
                    elemDetail.Nombre = reader.GetString(reader.GetOrdinal("NOMBRE"));
                    elemDetail.Tipo = reader.GetInt32(reader.GetOrdinal("TIPO"));
                    elemDetail.Grupo = reader.GetInt32(reader.GetOrdinal("GRUPO"));
                    elemDetail.Periodo = reader.GetInt32(reader.GetOrdinal("PERIODO"));
                    elemDetail.MasaAtomica = reader.GetString(reader.GetOrdinal("MASA_ATOMICA"));
                }
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return elemDetail;
        }
        public void updateElemento(int nroAtomico, String detalles)
        {
            String query = "UPDATE DETALLE SET DETALLE = @detallesParam WHERE NRO_ATOMICO = @nroAtomicoParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            List<DbParameter> paramList = new List<DbParameter>();
            DbParameter param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.Int32;
            param.ParameterName = "@nroAtomicoParam";
            param.Value = nroAtomico;
            paramList.Add(param);
            param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@detallesParam";
            param.Value = detalles;
            paramList.Add(param);
            this.executeNonQuery(query, paramList, CommandType.Text);

        }

        public static ElementoDAL getInstance()
        {
            if (instance == null)
            {
                lock (syncRoot)
                {
                    if (instance == null)
                        instance = new ElementoDAL();
                }
            }

            return instance;
        }

        private ElementoDAL() { }
    }
}
