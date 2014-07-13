using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using TablaPeriodica.DLL;
using System.Data.Common;
using System.Collections;

namespace TablaPeriodica.DAL
{
    public class UsuarioDAL :Commons, IDALUsuario


    {
        public DLL.Usuario getUsuario(string mail)
        {
            Usuario usuario = null;
            String query = "SELECT NOMBRE, APELLIDO, TIPO_USUARIO, MAIL, CONTRASENIA FROM USUARIOS where mail =@mailParam ";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
                con.ConnectionString = Commons.getConnectionString();
                IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
                    cmd.Connection = con;
                    cmd.CommandType = CommandType.Text;
                    cmd.CommandText = query;
                    IDataParameter param = cmd.CreateParameter();
                    param.DbType = DbType.String;
                    param.ParameterName = "@mailParam";
                    param.Value = mail;
                    cmd.Parameters.Add(param);
                    try{
                        con.Open();
                        IDataReader reader = cmd.ExecuteReader();
                            if(reader.Read()){
                                usuario = buildUsuario(reader);
                            }
                            reader.Close();
                            con.Close();
                            con.Dispose();
                    } catch (DbException dbex){
                        throw;
                    }
            return usuario;
        }

        public void deleteUsuario(String mail)
        {
            throw new NotImplementedException();
        }

        public void updateContraseniaUsuario(DLL.Usuario usuario)
        {
            String query = "UPDATE  USUARIO SET CONTRASENIA = @contraseniaParam where MAIL = @mailParam";
            IDbConnection con = Commons.getProviderFactory().CreateConnection();
            con.ConnectionString = Commons.getConnectionString();
            IDbCommand cmd = Commons.getProviderFactory().CreateCommand();
            cmd.Connection = con;
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = query;
            List<DbParameter> paramList = new List<DbParameter>();
            DbParameter param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@contraseniaParam";
            param.Value = usuario.Contrasenia;
            paramList.Add(param);
            param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@mailParam";
            param.Value = usuario.Mail;
            paramList.Add(param);
            this.executeNonQuery(query, paramList, CommandType.Text);
        }

        public void deleteUsuario(DLL.Usuario usuario)
        {
            List<DbParameter> paramList = new List<DbParameter>();
            DbParameter param = Commons.getProviderFactory().CreateParameter();
            param.DbType = DbType.String;
            param.ParameterName = "@idUsuario";
            param.Value = usuario.Mail;
            paramList.Add(param);
            this.executeNonQuery("delete from usuario where mail =@idUsuario", paramList, CommandType.Text);
        }

        public void insertUsuario(DLL.Usuario usuario)
        {
            String str = "insert into usuarios (nombre, apellido, tipo_usuario, mail, contrasenia) values ('{0}', '{1}', '{2}', '{3}', '{4}')";
            str = String.Format(str, usuario.Nombre, usuario.Apellido, usuario.TipoUsuario, usuario.Mail, usuario.Contrasenia);

            this.executeNonQuery(str, CommandType.Text);
        }

        public List<DLL.Usuario> getProfesores()
        {
            List<Usuario> profesores = new List<Usuario>();
            String query = "SELECT NOMBRE, APELLIDO, TIPO_USUARIO, MAIL, CONTRASENIA FROM USUARIOS where TIPO_USUARIO = 'PRO' ";
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
                if (reader.Read())
                {
                    Usuario usuario = buildUsuario(reader);
                    profesores.Add(usuario);
                }
                reader.Close();
                con.Close();
                con.Dispose();
            }
            catch (DbException dbex)
            {
                throw;
            }
            return profesores;
        }

        private Usuario buildUsuario(IDataReader reader)
        {
            Usuario usuario = new Usuario();
            usuario.Mail = reader.GetString(reader.GetOrdinal("MAIL"));
            usuario.Nombre = reader.GetString(reader.GetOrdinal("NOMBRE"));
            usuario.Apellido = reader.GetString(reader.GetOrdinal("APELLIDO"));
            usuario.TipoUsuario = reader.GetString(reader.GetOrdinal("TIPO_USUARIO"));
            usuario.Contrasenia = reader.GetString(reader.GetOrdinal("CONTRASENIA"));
            return usuario;
        }
    }
}
