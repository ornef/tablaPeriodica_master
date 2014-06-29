using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TablaPeriodica.DAL
{
    public abstract class Commons
    {

        private static String CONEXION_POR_DEFAULT = "DefaultConnection";

        public static String getConnectionString()
        {
            return ConfigurationManager.ConnectionStrings[CONEXION_POR_DEFAULT].ConnectionString.ToString();
        }

        public static String getMyProvider()
        {
            return ConfigurationManager.ConnectionStrings[CONEXION_POR_DEFAULT].ProviderName.ToString();
        }

        public static DbProviderFactory getProviderFactory()
        {
            return DbProviderFactories.GetFactory(getMyProvider());
        }

        public Object executeScalar(String query, List<DbParameter> param, CommandType cmdType)
        {
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.CommandType = cmdType;
            cmd.CommandText = query;
            foreach (DbParameter parameter in param)
            {
                cmd.Parameters.Add(parameter);
            }
            try
            {
                con.Open();
                cmd.Transaction = con.BeginTransaction();
                cmd.Connection = con;
                return cmd.ExecuteScalar();
                cmd.Transaction.Commit();
                cmd.Dispose();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            catch (SystemException sysex)
            {
                cmd.Transaction.Rollback();
                throw;
            }
        }

        public void executeNonQuery(String query, List<DbParameter> param, CommandType cmdType)
        {
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.CommandType = cmdType;
            cmd.CommandText = query;
            foreach (DbParameter parameter in param)
            {
                cmd.Parameters.Add(parameter);
            }
            try
            {
                con.Open();
                cmd.Transaction = con.BeginTransaction();
                cmd.Connection = con;
                cmd.ExecuteNonQuery();
                cmd.Transaction.Commit();
                cmd.Dispose();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            catch (SystemException ex)
            {
                cmd.Transaction.Rollback();
                throw;
            }
        }


        public static Byte conversorBit(Boolean valor)
        {
            if (valor)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }


    }
}

