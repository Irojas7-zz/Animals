using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tico.Animales.BusAnimales;
using Tico.Animales.Business.EntAnimales;
using Tico.Animales.DatAnimales;

public partial class Informacion : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int id = Request.QueryString["Id"] == null ? 0 : Convert.ToInt32(Request.QueryString["Id"]);
        hfId.Value = id.ToString();
        if (!IsPostBack)
        {
            CargarCatalogos();
            if (id != 0)
            {
                CargarDatos(id);
                btnNew.Visible = false;
            }
            else
            {
                btnDelete.Visible = false;
                btnUpdate.Visible = false;
                //txtFech.Enabled = false;
                txtFech.Text = DateTime.Today.ToString("dd/MM/yyyy HH:mm");
            }
        }


        //ModificarDatos();
    }
    private void CargarDatos(int Id)
    {
        EntAnimal ani = new BusAnimal().Obtener(Id);

        txtNomb.Text = ani.Nombre;
        txtExit.Text = ani.Existencia.ToString();
        txtPeso.Text = ani.Peso.ToString();
        txtFech.Text = ani.Fecha_Alta.ToString();
        //txtFech.Text = ani.Fecha_Alta.ToString("dd/MM/yyyy");
        txtEdad.Text = string.Format("{0} años", ani.Edad);
        txtUrl.Text = ani.Video;
        ddlTipo.SelectedValue = ani.Tipo_Id.ToString();
        ddlColor.SelectedValue = ani.Color_Id.ToString();
        ddlGenero.SelectedValue = ani.Genero_Id.ToString();
        imgPort.Src = ani.FotoPortada;
        imgMini.Src = ani.FotoMini;
        urlVideo.Src = ani.Video;

        ViewState["FotoPortada"] = imgPort.Src;
        ViewState["FotoMini"] = imgMini.Src;
    }
    private void CargarCatalogos()
    {
        List<List<EntCatalogos>> list = new BusCatalogos().Obtener();

        ddlTipo.DataSource = list[0];
        ddlTipo.DataTextField = "Nombre";
        ddlTipo.DataValueField = "Id";
        ddlTipo.DataBind();

        ddlColor.DataSource = list[1];
        ddlColor.DataTextField = "Nombre";
        ddlColor.DataValueField = "Id";
        ddlColor.DataBind();

        ddlGenero.DataSource = list[2];
        ddlGenero.DataTextField = "Nombre";
        ddlGenero.DataValueField = "Id";
        ddlGenero.DataBind();
    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        ModificarDatos(Convert.ToInt32(hfId.Value));
    }
    protected void btnDelete_Click(object sender, EventArgs e)
    {
        EliminarDatos(Convert.ToInt32(hfId.Value));
    }
    protected void btnNew_Click(object sender, EventArgs e)
    {
        try
        {
            InsertarDatos();
        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
       
    }
    private void InsertarDatos()
    {
        EntAnimal ani = new EntAnimal();
        ani.Nombre = txtNomb.Text.Trim();
        ani.Tipo_Id = Convert.ToInt32(ddlTipo.SelectedValue);
        ani.Color_Id = Convert.ToInt32(ddlColor.SelectedValue);
        ani.Genero_Id = Convert.ToInt32(ddlGenero.SelectedValue);
        ani.Existencia = Convert.ToInt32(txtExit.Text.Trim());
        ani.Edad = Convert.ToInt32(txtEdad.Text.Trim());
        ani.Peso = Convert.ToDecimal(txtPeso.Text.Trim());
        ani.Estatus = Convert.ToBoolean(1);

        if (fuFotoPortada.HasFile)
        {
            string ruta = Server.MapPath(@"img\");
            int fileSize = fuFotoPortada.PostedFile.ContentLength;
            string extension = System.IO.Path.GetExtension(fuFotoPortada.FileName);
            if (fileSize <= 2100000 && (extension == ".jpg" || extension == ".jpeg"))
            {
                fuFotoPortada.SaveAs(ruta + fuFotoPortada.FileName);
                ani.FotoPortada = "img\\" + fuFotoPortada.FileName;
            }
            else
                MostrarMensaje(string.Format("Tu archivo {0} es demasiado grande o no cumple con la extension \"jpg\"", fuFotoPortada.FileName));
        }
        else
        {
            MostrarMensaje("Falta Foto de portada");
        }
        ani.FotoMini = "img\\hipoMini.jpg";
        ani.Video = txtUrl.Text.Trim() == "" ? "https://www.youtube.com/embed/xPndNFuqEWY" : txtUrl.Text.Trim();
        new BusAnimal().Insertar(ani);

        wsAnimales insert = new wsAnimales();
        insert.insertAnimales(ani.Nombre, ani.Tipo_Id, ani.Color_Id, ani.Genero_Id, ani.Existencia, ani.Edad, ani.Peso, ani.Estatus, ani.FotoPortada, ani.FotoMini, ani.Video);

        Response.Redirect(Request.CurrentExecutionFilePath);
    }
    /// <summary>
    /// Método para mostrar mensaje de texto en JavaScript
    /// </summary>
    /// <param name="mensaje"></param>
    private void MostrarMensaje(string mensaje)
    {
        mensaje = mensaje.Replace("'", "").Replace("\n", "").Replace("\r", "");
        string alerta = "alert('" + mensaje + "');";
        ScriptManager.RegisterStartupScript(this, GetType(), "", alerta, true);
    }
    private void ModificarDatos(int Id)
    {
        EntAnimal ani = new EntAnimal();
        ani.Id = Id;
        ani.Nombre = txtNomb.Text.Trim();
        ani.Tipo_Id = Convert.ToInt32(ddlTipo.SelectedValue);
        ani.Color_Id = Convert.ToInt32(ddlColor.SelectedValue);
        ani.Genero_Id = Convert.ToInt32(ddlGenero.SelectedValue);
        ani.Existencia = Convert.ToInt32(txtExit.Text.Trim());
        ani.Edad = Convert.ToInt32(txtEdad.Text.Trim());
        ani.Peso = Convert.ToDecimal(txtPeso.Text.Trim());
        ani.Estatus = Convert.ToBoolean(1);

        if (fuFotoPortada.HasFile)
        {
            string ruta = Server.MapPath(@"img\");
            int fileSize = fuFotoPortada.PostedFile.ContentLength;
            string extension = System.IO.Path.GetExtension(fuFotoPortada.FileName);
            MemoryStream str = new MemoryStream(fuFotoPortada.FileBytes);
            System.Drawing.Image bmp = System.Drawing.Image.FromStream(str);
            int ancho = bmp.Width;
            int alto = bmp.Height;
            
            if (fileSize <= 2100000 && (extension == ".jpg" || extension == ".jpeg") && (ancho == 1280 || alto == 720))
            {
                fuFotoPortada.SaveAs(ruta + fuFotoPortada.FileName);
                ani.FotoPortada = "img\\" + fuFotoPortada.FileName;
            }
            else
                MostrarMensaje(string.Format("Tu archivo {0} es demasiado grande o no cumple con la extension \"jpg\" o no cumple con las dimensiones 1280 * 720", fuFotoPortada.FileName));
        }
        else
        {
            ani.FotoPortada = ViewState["FotoPortada"].ToString();
        }
        ani.FotoMini = "img\\hipoMini.jpg";
        ani.Video = txtUrl.Text.Trim() == "" ? "https://www.youtube.com/embed/xPndNFuqEWY" : txtUrl.Text.Trim();

        new BusAnimal().Actualizar(ani);
        Response.Redirect(Request.CurrentExecutionFilePath);
    }
    private void EliminarDatos(int Id)
    {
        new DatAnimal().Eliminar(Id);
    }
}