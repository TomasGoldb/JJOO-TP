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
        return View("paises");
    }
    public IActionResult Deportes()
    {
        return View("deportes");
    }
    public IActionResult AgregarDeportista()
    {
        return View("agregardeportista");//CONTINUAR
    }
    public IActionResult EliminarDeportista(int idCandidato)
    {
        return View("index");
    }
    public IActionResult VerDetalleDeportista(int idDeportista)
    {
        return View("detalledeportista");
    }
    public IActionResult VerDetallePais(int idPais)
    {
        return View("detallepais");
    }
    public IActionResult Historia()
    {
        return View("historia");
    }

    [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
    public IActionResult Error()
    {
        return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
    }
}
