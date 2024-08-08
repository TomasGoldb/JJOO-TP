class Deportista
{
    public int IdDeportista {get; set;}
    public string Apellido {get; set;}
    public string Nombre {get; set;}
    public DateTime FechaNacimiento {get; set;}
    public string Foto {get; set;}
    public int IdPais {get; set;}
    public int IdDeporte {get; set;}
    public Deportista(int idDeportista, string apellido, string nombre, DateTime fechaNacimiento, string foto, int idpais, int idDeporte)
    {
        IdDeportista = idDeportista;
        Apellido = apellido;
        Nombre = nombre;
        FechaNacimiento = FechaNacimiento;
        Foto = foto;
        IdPais = idpais;
        IdDeporte = idDeporte;
    }
}