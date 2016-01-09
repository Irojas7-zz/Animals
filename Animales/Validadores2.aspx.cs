using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Validadores2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string valor = idBox.Value;
        string val = valor;
        CargarGvAnimales();
        CargarGvAnimalesEXT();
        CargarPersonasJorsh();
    }

    private void CargarPersonasJorsh()
    {
        wsNSJORSHPersonas.wsPrueba objProxy = new wsNSJORSHPersonas.wsPrueba();
        gvPersonasJorsh.DataSource = objProxy.Obtener().Persona;
        gvPersonasJorsh.DataBind();
    }

    private void CargarGvAnimalesEXT()
    {
        wsNSEXTAnimales.wsAnimales objProxy = new wsNSEXTAnimales.wsAnimales();
        gvAnimalesExterno.DataSource = objProxy.getAnimales().animales;
        gvAnimalesExterno.DataBind();
    }

    private void CargarGvAnimales()
    {
        wsAnimales objProxy = new wsAnimales();
        gvAnimales.DataSource = objProxy.getAnimales().animales;
        gvAnimales.DataBind();

    }
}