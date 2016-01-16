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
       // CargarGvAnimalesExterno();
    }

    private void CargarGvAnimalesExterno()
    {
        wsNSEXTAnimales.wsAnimales objProxy = new wsNSEXTAnimales.wsAnimales();
        gvAnimalesExterno.DataSource = objProxy.getAnimales();
        gvAnimalesExterno.DataBind();
    }

    private void CargarGvAnimales()
    {
        wsAnimales objProxy = new wsAnimales();
        gvAnimales.DataSource = objProxy.getAnimales().animales;
        gvAnimales.DataBind();

    }
    protected void btnReporte_Click(object sender, EventArgs e)
    {
        Response.Redirect("Reportes\\reporteTico.aspx");
    }
}