using System.Data.SqlClient;
using Dapper;

namespace JJOO_TP.Models
{
    public static class BD
    {
        private static string _connectionString { get; set; } = @"Server=localhost;DataBase=JJOO;Trusted_Connection=true;";




        public static List<Deportista> ListarDeportistasPais(int IdPais)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                List<Deportista> listaDep = new List<Deportista>();
                string sql = "select * from deportistas where IdPais=@pIdPais";
                listaDep = db.Query<Deportista>(sql, new{pIdPais=IdPais}).ToList();
                return listaDep;
            }
        }
        public static List<Deportista> ListarDeportistasDeporte(int IdDeporte)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                List<Deportista> listaDep = new List<Deportista>();
                string sql = "select * from deportistas where IdDeporte=@pIdDeporte";
                listaDep = db.Query<Deportista>(sql, new{pIdDeporte=IdDeporte}).ToList();
                return listaDep;
            }
        }
        public static List<Pais> ListarPaises()
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                List<Pais> listaPais = new List<Pais>();
                string sql = "select * from pais";
                listaPais = db.Query<Pais>(sql).ToList();
                return listaPais;
            }
        }
        public static List<Deportista> VerInfoDeportista(int idDeportista)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                List<Deportista> listaDep = new List<Deportista>();
                string sql = "select * from deportistas where IdDeportista=@pIdDeportista";
                listaDep = db.Query<Deportista>(sql, new{pIdDeportista=idDeportista}).ToList();
                return listaDep;
            }
        }
        public static List<Pais> VerInfoPais(int idPais)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                List<Pais> listaDep = new
                 List<Pais>();
                string sql = "select * from deportistas where IdPais=@pIdPais";
                listaDep = db.Query<Pais>(sql, new{pIdPais=idPais}).ToList();
                return listaDep;
            }
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