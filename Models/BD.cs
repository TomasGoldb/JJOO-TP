using System.Data.SqlClient;
using Dapper;

namespace JJOO_TP.Models
{
    public static class BD
    {
        private static string _connectionString { get; set; } = @"Server=A-PHZ2-LUM-05;DataBase=JJOO;Trusted_Connection=true;";

        public static void AgregarDeportista(Deportista dep)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "INSERT INTO deportista(Apellido,Nombre,FechaNacimiento,Foto,IdPais,IdDeporte) VALUES (@pApellido,@pNombre,@pFechaNacimiento,@pFoto,@pIdPais,@pIdDeporte)";
                db.Execute(sql, new { pApellido = dep.Apellido, pNombre = dep.Nombre, pFechaNacimiento = dep.FechaNacimiento, pFoto = dep.Foto, pIdPais = dep.IdPais, pIdDeporte = dep.IdDeporte });
            }
        }
        public static void EliminarDeportista(int idDeportista)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"DELETE * FROM DEPORTISTA WHERE @pidDeportista = idDeportista";
                db.Execute(sql, new {pIdDeportista = idDeportista});
            }
        }
        public static List<Deportista> ListarDeportistasPais(int idPais)
        {
            List<Deportista> ListaDeportistas = new List<Deportista>();
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"SELECT * FROM DEPORTISTA WHERE IdPais = @pidPais";
                ListaDeportistas = db.Query<Deportista>(sql, new {pidPais = idPais}).ToList();
            }
            return ListaDeportistas;
        }
        public static List<Deportista> ListarDeportistasDeporte(int IdDeporte)
        {
            List<Deportista> ListaDeportistasDeporte = new List<Deportista>();
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = $"SELECT * FROM DEPORTISTA WHERE  IdDeporte=@pIdDeporte";
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
                string sql = "select * from deporte where IdDeporte=@pIdDeporte";
                deporte = db.QueryFirstOrDefault<Deporte>(sql, new { pIdDeporte = idDeporte });
            }
            return deporte;
        }
        public static Deportista VerInfoDeportista(int idDeportista)
        {
            Deportista deportista = null;
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select * from deportista where IdDeportista=@pIdDeportista";
                deportista = db.QueryFirstOrDefault<Deportista>(sql, new {pIdDeportista = idDeportista});
            }
            return deportista;
        }
        public static Pais VerInfoPais(int idPais)
        {
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                Pais pais = null;
                string sql = "select * from pais where idPais = @pIdPais";
                pais = db.QueryFirstOrDefault<Pais>(sql, new { pIdPais = idPais });
                return pais;
            }
        }
        public static int GetIdPais(string Nombre)
        {
            int idPais;
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select idPais from Pais where Nombre = @pnombre" ;
                idPais = db.QueryFirstOrDefault<int>(sql, new {pnombre = Nombre});
            }
            return idPais;
        }
        public static int GetIdDeporte(string nombre)
        {
            int idDeporte;
            using (SqlConnection db = new SqlConnection(_connectionString))
            {
                string sql = "select idDeporte from Deporte where Nombre = @pnombre";
                idDeporte = db.QueryFirstOrDefault<int>(sql, new {pnombre = nombre});
            }
            return idDeporte;
        }


    }
}