using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data.Common;
using System.Configuration;
using TablaPeriodica.DLL;
using System.Data;

namespace TablaPeriodica.DAL
{
    public class PreguntaDAL :Commons, IDALPregunta
    {
        public static String TABLA_MENSAJES = "MENSAJES";

        public Pregunta getPregunta(int idMensaje)
        {
            Pregunta pregunta = new Pregunta();
            String query = "SELECT ID_MENSAJE, DE_USUARIO, A_USUARIO, MENSAJE, ELEMENTO, FECHA FROM MENSAJES WHERE ID_MENSAJE = @idMensajeParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            IDataParameter param = cmd.CreateParameter();
            param.DbType = DbType.Int32;
            param.ParameterName = "@idMensajeParam";
            param.Value = idMensaje;
            cmd.Parameters.Add(param);
            try
            {
                con.Open();
                IDataReader reader = cmd.ExecuteReader();
                if (reader.Read())
                {
                    pregunta.IdMensaje = reader.GetInt32(reader.GetOrdinal("ID_MENSAJE"));
                    pregunta.DeUsuario = reader.GetString(reader.GetOrdinal("DE_USUARIO"));
                    pregunta.AUsuario = reader.GetString(reader.GetOrdinal("A_USUARIO"));
                    pregunta.Mensaje = reader.GetString(reader.GetOrdinal("MENSAJE"));
                    pregunta.NroAtomico = reader.GetInt32(reader.GetOrdinal("ELEMENTO"));
                    pregunta.Fecha = reader.GetDateTime(reader.GetOrdinal("FECHA"));
                }
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return pregunta;
        }

        public void addPregunta(Pregunta pregunta)
        {
            String query = "INSERT INTO MENSAJES (DE_USUARIO, A_USUARIO, MENSAJE, ELEMENTO, FECHA) VALUES (@deUsuario, @aUsuario, @mensaje, @elemento, @fecha)";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            IDataParameter param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@deUsuario";
            param.Value = pregunta.DeUsuario;
            cmd.Parameters.Add(param);
            param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@aUsuario";
            param.Value = pregunta.AUsuario;
            cmd.Parameters.Add(param);
            param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@mensaje";
            param.Value = pregunta.Mensaje;
            cmd.Parameters.Add(param);
            param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@elemento";
            param.Value = pregunta.NroAtomico;
            cmd.Parameters.Add(param);
            param = cmd.CreateParameter();
            param.DbType = DbType.Time;
            param.ParameterName = "@fecha";
            param.Value = DateTime.Now.ToString("dd/MM/yyyy");
            cmd.Parameters.Add(param);
            try
            {
                con.Open();
                cmd.ExecuteNonQuery();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }

        }

        public List<Pregunta> SelectAll()
        {
            List<Pregunta> pregList = new List<Pregunta>();
            String query = "SELECT * FROM MENSAJES ORDER BY FECHA";
            try
            {
                SqlConnection con = new SqlConnection();
                con.ConnectionString = Commons.getConnectionString();

                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = new SqlCommand();
                da.SelectCommand.CommandText = query;
                da.SelectCommand.Connection = con;
                da.SelectCommand.CommandType = CommandType.Text;
                        
                DataSet ds = new DataSet();
                da.Fill(ds, TABLA_MENSAJES);
                if(ds.Tables[0].Rows.Count > 0){
                    foreach(DataRow item in ds.Tables[0].Rows){
                        Pregunta preg = new Pregunta();
                        preg.IdMensaje = Int32.Parse(item["ID_MENSAJE"].ToString());
                        preg.DeUsuario = item["DE_USUARIO"].ToString();
                        preg.AUsuario = item["A_USUARIO"].ToString();
                        preg.Mensaje = item["MENSAJE"].ToString();
                        preg.Fecha = DateTime.Parse(item["ELEMENTO"].ToString());
                        preg.NroAtomico = Int32.Parse(item["FECHA"].ToString());
                        pregList.Add(preg);
                    }
                    da.Update(ds, TABLA_MENSAJES);
                }
            } catch (DbException dbex)
            {
                throw;
            }
            return pregList;
        }

       
    }
}
