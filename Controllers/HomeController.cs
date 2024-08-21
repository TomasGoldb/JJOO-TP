using System.Diagnostics;
using Microsoft.AspNetCore.Mvc;
using JJOO_TP.Models;

namespace JJOO_TP.Controllers;

public class HomeController : Controller
{
    private readonly ILogger<HomeController> _logger;

    public HomeController(ILogger<HomeController> logger)
    {
        _logger = logger;
    }

    public IActionResult Index()
    {
        return View();
    }

    public IActionResult Privacy()
    {
        return View();
    }

    public IActionResult Creditos()
    {
        return View("creditos");
    }
    public IActionResult Paises()
    {
        ViewBag.listaPaises = BD.ListarPaises();
        return View("paises");
    }
    public IActionResult Deportes()
    {
        ViewBag.listaDeportes = BD.ListarDeportes();
        return View("deportes");
    }
    public IActionResult AgregarDeportista()
    {
        ViewBag.listaPaises = BD.ListarPaises();
        ViewBag.listaDeportes = BD.ListarDeportes();
        return View("agregardeportista");//CONTINUAR
    }
    public IActionResult EliminarDeportista(int idCandidato)
    {
        BD.EliminarDeportista(idCandidato);
        return View("index");
    }
    public IActionResult VerDetalleDeporte(int idDeporte)
    {
        ViewBag.deporte = BD.VerInfoDeporte(idDeporte);
        ViewBag.listaDeportistasDeporte = BD.ListarDeportistasDeporte(idDeporte);
        return View("verdetalledeporte");
    }
    public IActionResult VerDetalleDeportista(int idDeportista)
    {
        ViewBag.deportista = BD.VerInfoDeportista(idDeportista);
        return View("verdetalledeportista");
    }
    public IActionResult VerDetallePais(int paisId)
    {
        ViewBag.pais = BD.VerInfoPais(paisId);
        ViewBag.listaDeportistasPais = BD.ListarDeportistasPais(paisId);
        return View("verdetallepais");
    }
    public IActionResult Historia()
    {
        return View("historia");
    }
    public IActionResult GuardarDeportista(string Apellido, string Nombre, string FechaNacimiento, string Foto, int Pais, int Deporte)
    {   
        DateTime fechaNacimiento = DateTime.Parse(FechaNacimiento);
        Deportista dep = new Deportista(Apellido, Nombre, fechaNacimiento, Foto, Pais, Deporte);
        BD.AgregarDeportista(dep);
        return View("index");
    }
    public IActionResult DeportistasPaisesDeportes()
    {
        ViewBag.lista = BD.GetDeportistasPaisesDeportes();
        return View();
    }  


    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
