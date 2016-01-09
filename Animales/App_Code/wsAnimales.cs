using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using Tico.Animales.BusAnimales;
using Tico.Animales.Business.EntAnimales;

/// <summary>
/// Descripción breve de wsAnimales
/// </summary>
[WebService(Namespace = "http://beneficia.mx/", Description="Web service para CRUD de animales")]
public class wsAnimales : System.Web.Services.WebService
{
    public wsAnimales()
    {
        //Elimine la marca de comentario de la línea siguiente si utiliza los componentes diseñados 
        //InitializeComponent(); 
    }
    [WebMethod]
    public string HelloWorld()
    {
        return "Hola a todos";
    }
    [WebMethod]
    public RespuestaAnimales getAnimales()
    {
        RespuestaAnimales resp = new RespuestaAnimales();
        try
        {
            resp.animales = new BusAnimal().Obtener();
            resp.EsError = false;
            return resp;
        }
        catch (Exception ex)
        {
            resp.EsError = true;
            resp.MensajeError = ex.Message;
            return resp;
        }
    }
    [WebMethod]
    public RespuestaAnimales insertAnimales(string Nombre, int Tipo, int Color, int Genero, int Existencias, int Edad, decimal Peso, bool Estatus, string FotoPortada, string FotoMini, string Video)
    {
        RespuestaAnimales resp = new RespuestaAnimales();
        try
        {

            resp.Resul = new BusAnimal().InsertarWs(Nombre, Tipo, Color, Genero, Existencias, Edad, Peso, Estatus, FotoPortada, FotoMini, Video);
            resp.EsError = false;
            return resp;
        }
        catch (Exception ex)
        {
            resp.EsError = true;
            resp.MensajeError = ex.Message;
            return resp;
        }
    }

    [WebMethod]
    public RespuestaAnimales updateAnimales(int Id, string Nombre, int Tipo, int Color, int Genero, int Existencias, int Edad, decimal Peso, bool Estatus, string FotoPortada, string FotoMini, string Video)
    {
        RespuestaAnimales resp = new RespuestaAnimales();
        try
        {

            resp.Resul = new BusAnimal().ActualizarWs(Id,Nombre, Tipo, Color, Genero, Existencias, Edad, Peso, Estatus, FotoPortada, FotoMini, Video);
            resp.EsError = false;
            return resp;
        }
        catch (Exception ex)
        {
            resp.EsError = true;
            resp.MensajeError = ex.Message;
            return resp;
        }
    }

    [WebMethod]
    public RespuestaAnimales deleteAnimales(int Id)
    {
        RespuestaAnimales resp = new RespuestaAnimales();

        try
        {
            resp.Resul = new BusAnimal().EliminarWs(Id);
            resp.EsError = false;
            return resp;
        }
        catch (Exception ex)
        {

            resp.EsError = true;
            resp.MensajeError = ex.Message;
            return resp;
        }

    }
}