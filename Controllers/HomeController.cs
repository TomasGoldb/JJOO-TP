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
        ViewBag.listaDeportes = BD.ListarDeportes();
        return View();
    }
    public IActionResult VerDetalleDeportista(int idDeportista)
    {
        Deportista depor =BD.VerInfoDeportista(idDeportista);
        ViewBag.deportista = depor;
        ViewBag.paisDeportista = BD.VerInfoPais(depor.IdPais);
        ViewBag.deporteDeportista = BD.VerInfoDeporte(depor.IdDeporte);
        return View("VerDetalleDeportista");
    }
    public IActionResult VerDetallePais(int paisId)
    {
        ViewBag.pais = BD.VerInfoPais(paisId);
        ViewBag.listaDeportistasPais = BD.ListarDeportistasPais(paisId);
        ViewBag.listaDeportes = BD.ListarDeportes();
        return View("verdetallepais");
    }
    public IActionResult GuardarDeportista(string Apellido, string Nombre, string FechaNacimiento, string Foto, int Pais, int Deporte)
    {   
        DateTime fechaNacimiento = DateTime.Parse(FechaNacimiento);
        Deportista dep = new Deportista(Apellido, Nombre, fechaNacimiento, Foto, Pais, Deporte);
        BD.AgregarDeportista(dep);
        return View("index");
    }


    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
