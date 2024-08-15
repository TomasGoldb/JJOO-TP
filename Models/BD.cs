using System.Data.SqlClient;
using Dapper;

namespace JJOO_TP.Models
{
    public static class BD
    {
        private static string _connectionString { get; set; } = @"Server=A-PHZ2-CIDI-23;DataBase=JJOO;Trusted_Connection=true;";

        public static void AgregarDeportista(Deportista dep)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"INSERT INTO deportista(IdDeportista,Apellido,Nombre,FechaNacimiento,Foto,IdPais,IdDeporte) VALUES (@pIdDeportista,@pApellido,@pNombre,@pFechaNacimiento,@pFoto,@pIdPais,@pIdDeporte)'";
                db.Execute(sql, new { pIdDeportista = dep.IdDeportista, pApellido = dep.Apellido, pNombre = dep.Nombre, pFechaNacimiento = dep.FechaNacimiento, pFoto = dep.Foto, pIdPais = dep.IdPais, pIdDeporte = dep.IdDeporte });
            }
        }
        public static void EliminarDeportista(int idDeportista)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"DELETE * FROM DEPORTISTAS WHERE @pidDeportista = idDeportista";
                db.Execute(sql, new {pIdDeportista = idDeportista});
            }
        }
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
            List<Deportista> ListaDeportistasDeporte = new List<Deportista>();
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"SELECT * FROM DEPORTISTAS WHERE  IdDeporte=@pIdDeporte";
                ListaDeportistasDeporte = db.Query<Deportista>(sql, new { pIdDeporte = IdDeporte }).ToList();
            }
            return ListaDeportistasDeporte;
        }
        public static List<Pais> ListarPaises()
        {
            List<Pais> listaPais = new List<Pais>();
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select * from pais";
                listaPais = db.Query<Pais>(sql).ToList();
            }
            return listaPais;
        }
        public static List<Deporte> ListarDeportes()
        {
            List<Deporte> listaDeportes = new List<Deporte>();
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select * from deporte";
                listaDeportes = db.Query<Deporte>(sql).ToList();
            }
            return listaDeportes;
        }
        public static List<Deporte> ListarDeportesLetra(string Letra)
        {
            List<Deporte> listaDeportes = new List<Deporte>();
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select * from deporte where Nombre like @pLetra +'%'";
                listaDeportes = db.Query<Deporte>(sql, new{pLetra=Letra}).ToList();
                
            }
            return listaDeportes;
        }
        public static Deporte VerInfoDeporte(int idDeporte)
        {
            Deporte deporte = null;
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select * from deportistas where IdDeportista=@pIdDeportista";
                deporte = db.QueryFirstOrDefault<Deporte>(sql, new { pIdDeportista = idDeporte });
            }
            return deporte;
        }
        public static Deportista VerInfoDeportista(int idDeportista)
        {
            Deportista deportista = null;
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select * from deportistas where IdDeportista=@pIdDeportista";
                deportista = db.QueryFirstOrDefault<Deportista>(sql, new {pIdDeportista = idDeportista});
            }
            return deportista;
        }
        public static List<Pais> VerInfoPais(int idPais)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                List<Pais> listaDep = new
                 List<Pais>();
                string sql = "select * from deportistas where IdPais=@pIdPais";
                listaDep = db.Query<Pais>(sql, new { pIdPais = idPais }).ToList();
                return listaDep;
            }
        }







    }
}