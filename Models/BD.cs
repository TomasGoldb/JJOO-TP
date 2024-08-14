using System.Data.SqlClient;
using Dapper;

namespace JJOO_TP.Models
{
    public static class BD
    {
        private static string _connectionString { get; set; } = @"Server=localhost;DataBase=JJOO;Trusted_Connection=true;";




       public static List<Deportista> ListarDeportistasPais(int idPais)
        {
            List<Deportista> ListaDeportistas = new List<Deportista>();
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"SELECT * FROM DEPORTISTAS WHERE @pidPais = idPais";
                ListaDeportistas = db.Query<Deportista>(sql).ToList();
            }
            return ListaDeportistas;
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

         



    }
}