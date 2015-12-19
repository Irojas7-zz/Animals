using Kadmiel.BusKadmiel.UtilityKadmiel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tico.Animales.BusAnimales;
using Tico.Animales.Business.EntAnimales;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //Encriptamos la cadena de conexion
        //string cadena = "Data Source=192.168.23.243;uid=sa;password=dell6650_243; Initial Catalog=Animal";
        //string encrip = UtiCrypto.Encriptar(cadena);

        //System.Threading.Thread.Sleep(1000);

        try
        {
            CargarAnimales();
        }
        catch (Exception ex)
        {

            MostrarMensaje(ex.Message);
        }

    }
    private void MostrarMensaje(string mensaje)
    {
        mensaje = mensaje.Replace("'", "").Replace("\r", "").Replace("\n", "");
        string alerta = "alert('" + mensaje + "');";
        ScriptManager.RegisterStartupScript(this, this.GetType(), "", alerta, true);
    }

    public void CargarAnimales()
    {
        List<EntAnimal> lst = new BusAnimal().Obtener();
        LiteralControl literal = new LiteralControl();
        literal.Text = "";

        foreach (EntAnimal dt in lst)
        {
            literal.Text += "<div class=\"col-md-4\">";
            literal.Text += "                    <div class=\"panel panel-info\">";
            literal.Text += "                        <div class=\"panel-heading\">                            ";
            literal.Text += "                            <a href=\"Informacion.aspx?id=" + dt.Id + "\"><img src=\"" + dt.FotoPortada + "\" class=\"img-responsive\" title=\"" + dt.Nombre + "\" /></a>";
            literal.Text += "                        </div>";
            literal.Text += "                        <div class=\"panel-body\">";
            literal.Text += "                            <div class=\"row\" style=\"height:170px; overflow:hidden;\">";
            literal.Text += "                                <div class=\"col-md-4\">";
            literal.Text += "                                    <img src=\"" + dt.FotoMini + "\" class=\"img-responsive\" />";
            literal.Text += "                                </div>";
            literal.Text += "                                <div class=\"col-md-8\">";
            literal.Text += "                                    <label id=\"Nombre\">Nombre Animal: " + dt.Nombre + "</label><br />";
            literal.Text += "                                    <label id=\"Tipo\">Tipo de Animal: " + dt.Tipo.Nombre + "</label><br />";
            literal.Text += "                                    <label id=\"Genero\">Genero Animal: " + dt.Genero.Nombre + "</label><br />                                    ";
            literal.Text += "                                </div>";
            literal.Text += "                                <div class=\"col-md-6\">";
            literal.Text += "                                    <label id=\"Peso\">Peso Animal: " + dt.Peso + "</label><br />                                    ";
            literal.Text += "                                    <label id=\"FecAlta\">Fecha de Ingreso: " + dt.Fecha_Alta + "</label><br />";
            literal.Text += "                                    <label id=\"Edad\">Edad del Animal: " + dt.Edad + "</label>";
            literal.Text += "                                </div>";
            literal.Text += "                                <div class=\"col-md-6\">";
            literal.Text += "                                    <label id=\"Color\">Color del Animal: " + dt.Color.Nombre + "</label><br />";
            literal.Text += "                                    <label id=\"Existencias\">Existencias: " + dt.Existencia + "</label>";
            literal.Text += "                                </div>";
            literal.Text += "                            </div>";
            literal.Text += "                            <iframe width=\"640\" height=\"360\" src=\"" + dt.Video + "\" frameborder=\"0\" allowfullscreen class=\"img-responsive\" controls></iframe>";
            literal.Text += "                        </div>";
            literal.Text += "                        <div class=\"panel-footer\">";
            literal.Text += "                            <a href=\"Informacion.aspx\" id=\"lnkIr\">Ir a Información</a>";
            literal.Text += "                        </div>";
            literal.Text += "                    </div>";
            literal.Text += "                </div>";

            phAnimales.Controls.Add(literal);
        }
    }

}