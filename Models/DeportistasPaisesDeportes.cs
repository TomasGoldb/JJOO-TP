public class DeportistasPaisesDeportes
{
    public string DeportistaNombre{get;set;}
    public string PaisNombre{get;set;}
    public string DeporteNombre{get;set;}
   
    public DeportistasPaisesDeportes()
    {
        
    } 
    public DeportistasPaisesDeportes(string deportistaNombre, string paisNombre, string deporteNombre)
    {
        DeportistaNombre = deportistaNombre;
        PaisNombre = paisNombre;
        DeporteNombre = deporteNombre;
    }
}