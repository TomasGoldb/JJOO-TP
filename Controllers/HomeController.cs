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
    public IActionResult VerDetallePais(int idPais)
    {
        /*ViewBag.pais = BD.VerInfoPais(idPais);
        ViewBag.listaDeportistasPais = BD.ListarDeportistasPais(idPais);*/
        return View("verdetallepais");
    }
    public IActionResult Historia()
    {
        return View("historia");
    }
    public IActionResult GuardarDeportista(Deportista dep)
    {
        BD.AgregarDeportista(dep);
        return View("index");
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
