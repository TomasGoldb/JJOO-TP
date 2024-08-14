using System.Data.SqlClient;
using Dapper;

namespace JJOO_TP.Models
{
    public static class BD
    {
        private static string _connectionString { get; set; } = @"Server=localhost;DataBase=JJOO;Trusted_Connection=true;";




        public static List<Deportista> aaa(Deportista dep)
        {
            List<Deportista> listaUsuario = new List<Deportista>();
            string sql = "select ";
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                listaUsuario = db.Query<Deportista>(sql).ToList();
            }
            return listaUsuario;
        }
        public static void AgregarDeportista(Deportista dep)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"INSERT INTO deportista(IdDeportista,Apellido,Nombre,FechaNacimiento,Foto,IdPais,IdDeporte) VALUES (@pIdDeportista,@pApellido,@pNombre,@pFechaNacimiento,@pFoto,@pIdPais,@pIdDeporte)'";
                db.Execute(sql, new { pIdDeportista = dep.IdDeportista, pApellido = dep.Apellido, pNombre = dep.Nombre, pFechaNacimiento = dep.FechaNacimiento, pFoto = dep.Foto, pIdPais = dep.IdPais, pIdDeporte = dep.IdDeporte });
            }
        }


        public static void CrearUsuario(Usuario objeto)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"INSERT INTO Usuario(Nombre,Nick,Contrasena,Mail) VALUES('{objeto.Nombre}','{objeto.Nick}','{objeto.GetContrasena()}','{objeto.GetMail()}')";
                db.Execute(sql, new { Nombre = objeto.Nombre, Nick = objeto.Nick, Contrasena = objeto.GetContrasena(), Mail = objeto.GetMail() });
            }
        }

        public static void UpdateFotoPerfil(Usuario objeto)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"UPDATE usuario SET FotoPerfil='{objeto.FotoPerfil}' where mail='{objeto.GetMail()}'";
                db.Execute(sql);
            }
        }



    }
}