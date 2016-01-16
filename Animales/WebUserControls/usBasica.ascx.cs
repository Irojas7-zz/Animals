using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public delegate void ResultadoAlPresionarElBotonEvent(object sender, ucCaracteresArgumentos e);
public partial class WebUserControls_usBasica : System.Web.UI.UserControl
{
    public event ResultadoAlPresionarElBotonEvent LinkClick;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void lnkCaracteres_Click(object sender, EventArgs e)
    {
        lblAccion.Text = string.Format("La cedena \"{0}\" tiene {1} caracteres", txtTexto.Text, txtTexto.Text.Length);
        if(LinkClick != null)
        {
            ucCaracteresResultados res = new ucCaracteresResultados();
            res.Texto = txtTexto.Text;
            res.CantidadDeCaracteres = txtTexto.Text.Length;
            //Argumentos hechos para enviar a la pagina
            ucCaracteresArgumentos args = new ucCaracteresArgumentos(res);
            LinkClick(this, args);
        }
    }
}