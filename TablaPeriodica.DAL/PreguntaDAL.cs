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
        private static volatile PreguntaDAL instance;
        private static object syncRoot = new Object();

        public List<Pregunta> getPreguntasParaProfesor (String mailProfe)
        {
            List<Pregunta> preguntas = new List<Pregunta>();
            String query = "SELECT ID_MENSAJE, DE_USUARIO, A_USUARIO, PREGUNTA, RESPUESTA, ELEMENTO, FECHA FROM MENSAJES WHERE A_USUARIO = @mailProfeParam AND RESPUESTA=''";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            IDataParameter param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@mailProfeParam";
            param.Value = mailProfe;
            cmd.Parameters.Add(param);
            try
            {
                con.Open();
                IDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Pregunta pregunta = buildPregunta(reader);
                        preguntas.Add(pregunta);
                    }
                
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return preguntas;
        }

        public List<Pregunta> getPreguntasAlumno(String mailAlumno)
        {
            List<Pregunta> preguntas = new List<Pregunta>();
            String query = "SELECT ID_MENSAJE, DE_USUARIO, A_USUARIO, PREGUNTA, RESPUESTA, ELEMENTO, FECHA FROM MENSAJES WHERE DE_USUARIO = @mailAlumnoParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            IDataParameter param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@mailAlumnoParam";
            param.Value = mailAlumno;
            cmd.Parameters.Add(param);
            try
            {
                con.Open();
                IDataReader reader = cmd.ExecuteReader();
                    while (reader.Read())
                    {
                        Pregunta pregunta = buildPregunta(reader);
                        preguntas.Add(pregunta);
                    }
                
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return preguntas;
        }

        private Pregunta buildPregunta(IDataReader reader)
        {
            Pregunta pregunta = new Pregunta();
            pregunta.IdMensaje = reader.GetInt32(reader.GetOrdinal("ID_MENSAJE"));
            pregunta.DeUsuario = reader.GetString(reader.GetOrdinal("DE_USUARIO"));
            pregunta.AUsuario = reader.GetString(reader.GetOrdinal("A_USUARIO"));
            pregunta.PreguntaAlumno = reader.GetString(reader.GetOrdinal("PREGUNTA"));
            pregunta.Respuesta = reader.GetString(reader.GetOrdinal("RESPUESTA"));
            pregunta.NroAtomico = reader.GetInt32(reader.GetOrdinal("ELEMENTO"));
            pregunta.Fecha = reader.GetDateTime(reader.GetOrdinal("FECHA"));
            return pregunta;
        }

        public void addPregunta(Pregunta pregunta)
        {
            String query = "INSERT INTO MENSAJES (DE_USUARIO, A_USUARIO, PREGUNTA, RESPUESTA, ELEMENTO, FECHA) VALUES (@deUsuario, @aUsuario, @mensaje,'', @elemento, getDate())";
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
            param.Value = pregunta.PreguntaAlumno;
            cmd.Parameters.Add(param);
            param = cmd.CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@elemento";
            param.Value = pregunta.NroAtomico;
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
                        preg.PreguntaAlumno = item["PREGUNTA"].ToString();
                        preg.Respuesta = item["RESPUESTA"].ToString();
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

        public void responder(int id, String respuesta) {
            String query = "UPDATE MENSAJES SET RESPUESTA = @respuestaParam where ID_MENSAJE = @idParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            List<DbParameter> paramList = new List<DbParameter>();
            DbParameter param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@respuestaParam";
            param.Value = respuesta;
            paramList.Add(param);
            param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.Int32;
            param.ParameterName = "@idParam";
            param.Value = id;
            paramList.Add(param);
            this.executeNonQuery(query, paramList, CommandType.Text);
        }

        public static PreguntaDAL getInstance()
        {
            if (instance == null)
            {
                lock (syncRoot)
                {
                    if (instance == null)
                        instance = new PreguntaDAL();
                }
            }

            return instance;
        }

        private PreguntaDAL() { }

       
    }
}
