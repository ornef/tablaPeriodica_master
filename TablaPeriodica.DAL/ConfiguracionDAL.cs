using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Common;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using TablaPeriodica.DLL;

namespace TablaPeriodica.DAL
{
    public class ConfiguracionDAL : Commons
    {
        private static volatile ConfiguracionDAL instance;
        private static object syncRoot = new Object();

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

        public List<Configuracion> getConfiguraciones()
        {
            List<Configuracion> configuraciones = new List<Configuracion>();
            String query = "SELECT * FROM CONFIGURACION";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            try
            {
                con.Open();
                IDataReader reader = cmd.ExecuteReader();
                while (reader.Read())
                {
                    Configuracion conf = new Configuracion();
                    conf.Id = reader.GetString(reader.GetOrdinal("ID"));
                    conf.Valor = reader.GetString(reader.GetOrdinal("VALOR"));
                    configuraciones.Add(conf);
                }
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return configuraciones;
        }

        public void updateConfiguration(String key, String value)
        {

            String query = "UPDATE CONFIGURACION SET VALOR = @valorParam where ID = @idParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            List<DbParameter> paramList = new List<DbParameter>();
            DbParameter param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@valorParam";
            param.Value = value;
            paramList.Add(param);
            param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@idParam";
            param.Value = key;
            paramList.Add(param);
            this.executeNonQuery(query, paramList, CommandType.Text);

        }

        public void insertConfiguration(String key, String value)
        {

            String query = "INSERT INTO CONFIGURACION (ID,VALOR) VALUES (@idParam, @valorParam)";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            List<DbParameter> paramList = new List<DbParameter>();
            DbParameter param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@valorParam";
            param.Value = value;
            paramList.Add(param);
            param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@idParam";
            param.Value = key;
            paramList.Add(param);
            this.executeNonQuery(query, paramList, CommandType.Text);

        }


            public static ConfiguracionDAL getInstance()
        {
            if (instance == null)
            {
                lock (syncRoot)
                {
                    if (instance == null)
                        instance = new ConfiguracionDAL();
                }
            }

            return instance;
        }

        private ConfiguracionDAL() { }
    }
    
}
