using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Tico.Animales.Business.EntAnimales;
/// <summary>
/// Descripción breve de RespuestaAnimales
/// </summary>
public class RespuestaAnimales
{
	public RespuestaAnimales()
	{
		//
		// TODO: Agregar aquí la lógica del constructor
		//
	}
    public List<EntAnimal> animales { get; set; }
    public bool EsError { get; set; }
    public string MensajeError { get; set; }
    public int Resul { get; set; }
}