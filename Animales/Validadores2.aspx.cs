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
        usBasica.LinkClick += usBasica_LinkClick;
        usBasica.FindControl("txtTexto");
    }

    void usBasica_LinkClick(object sender, ucCaracteresArgumentos e)
    {
        lblValidadores.Text = string.Format("La longitud del nombre es {0} y el nombre es {1}", e.TxtUserControl.CantidadDeCaracteres, e.TxtUserControl.Texto);
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