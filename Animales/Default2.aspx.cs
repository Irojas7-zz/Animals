using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tico.Animales.BusAnimales;
using Tico.Animales.Business.EntAnimales;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!IsPostBack)
            {
                CargarGvAnimales();
                LlenarDDLs();
            }
        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }

    private void LlenarDDLs()
    {
        List<List<EntCatalogos>> list = new BusCatalogos().Obtener();

        DropDownList ddlColor = (DropDownList)gvAnimales.FooterRow.FindControl("ddlColorFT");

        ddlColor.DataSource = list[1];
        ddlColor.DataTextField = "Nombre";
        ddlColor.DataValueField = "Id";
        ddlColor.DataBind();

        DropDownList ddlGenero = (DropDownList)gvAnimales.FooterRow.FindControl("ddlGeneroFT");
        ddlGenero.DataSource = list[2];
        ddlGenero.DataTextField = "Nombre";
        ddlGenero.DataValueField = "Id";
        ddlGenero.DataBind();
    }

    private void CargarGvAnimales()
    {
        List<EntAnimal> lst = new BusAnimal().Obtener();
        gvAnimales.DataSource = lst;
        gvAnimales.DataBind();

        gvAnimales.FooterRow.Cells[7].ColumnSpan = 2;
        gvAnimales.FooterRow.Cells[8].Visible = false;
        int filas = hfFila.Value == "" ? lst.Count : Convert.ToInt32(hfFila.Value);
        int contador = 0;
        foreach (EntAnimal ent in lst)
        {
            while (contador < filas)
            {
                CheckBox chk = (CheckBox)gvAnimales.Rows[contador].FindControl("chkEstatus");
                if (!chk.Checked)
                {
                    LinkButton lnk = (LinkButton)gvAnimales.Rows[contador].FindControl("lnkEditar");
                    lnk.Enabled = false;
                    LinkButton lnkElim = (LinkButton)gvAnimales.Rows[contador].FindControl("lnkBorrar");
                    lnkElim.Enabled = false;
                }
                contador++;
            }
        }
    }

    private void MostrarMensaje(string mensaje)
    {
        mensaje = mensaje.Replace("'", "").Replace("\n", "").Replace("\r", "");
        string alerta = "alert('" + mensaje + "');";
        ScriptManager.RegisterStartupScript(this, GetType(), "", alerta, true);
    }
    protected void gvAnimales_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {
            gvAnimales.EditIndex = -1;
            CargarGvAnimales();
        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
    protected void gvAnimales_RowDeleting(object sender, GridViewDeleteEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(gvAnimales.DataKeys[e.RowIndex].Values["Id"]);
            new BusAnimal().Eliminar(id);
        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
    protected void gvAnimales_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {
            gvAnimales.EditIndex = e.NewEditIndex;
            hfFila.Value = e.NewEditIndex.ToString();
            CargarGvAnimales();

            List<List<EntCatalogos>> list = new BusCatalogos().Obtener();

            DropDownList ddlColor = (DropDownList)gvAnimales.Rows[e.NewEditIndex].FindControl("ddlColorEIT");
            ddlColor.DataSource = list[1];
            ddlColor.DataTextField = "Nombre";
            ddlColor.DataValueField = "Id";
            ddlColor.DataBind();
            ddlColor.SelectedValue = (gvAnimales.DataKeys[e.NewEditIndex].Values["Color_Id"]).ToString();

            DropDownList ddlGenero = (DropDownList)gvAnimales.Rows[e.NewEditIndex].FindControl("ddlGeneroEIT");
            ddlGenero.DataSource = list[2];
            ddlGenero.DataTextField = "Nombre";
            ddlGenero.DataValueField = "Id";
            ddlGenero.DataBind();
            ddlGenero.SelectedValue = gvAnimales.DataKeys[e.NewEditIndex].Values["Genero_Id"].ToString();

            LlenarDDLs();
        }
        catch (Exception ex)
        {
            Title = ex.Message;
        }
    }
    protected void gvAnimales_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {
            EntAnimal ani = new EntAnimal();
            ani.Nombre = ((TextBox)gvAnimales.Rows[e.RowIndex].FindControl("txtNombreEIT")).Text;
            ani.Color_Id = Convert.ToInt32(((DropDownList)gvAnimales.Rows[e.RowIndex].FindControl("ddlColorEIT")).SelectedValue);
            ani.Genero_Id = Convert.ToInt32(((DropDownList)gvAnimales.Rows[e.RowIndex].FindControl("ddlGeneroEIT")).SelectedValue);
            ani.Peso = Convert.ToDecimal(((TextBox)gvAnimales.Rows[e.RowIndex].FindControl("txtPesoEIT")).Text);
            ani.Fecha_Alta = Convert.ToDateTime(((TextBox)gvAnimales.Rows[e.RowIndex].FindControl("txtFechaEIT")).Text);
            ani.Estatus = ((CheckBox)gvAnimales.Rows[e.RowIndex].FindControl("chkEstatusEIT")).Checked;
            ani.FotoPortada = "img\\" + ((FileUpload)gvAnimales.Rows[e.RowIndex].FindControl("fuFotoPortadaEIT")).FileName;
        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
    protected void lnkNombre_Click(object sender, EventArgs e)
    {
        LinkButton lnk = (LinkButton)sender;
        int fila = Convert.ToInt32(lnk.CommandArgument);
        int id = Convert.ToInt32(gvAnimales.DataKeys[fila].Values["Id"]);
        Title = "Fila=" + fila.ToString() + " Id=" + id;
    }
    protected void lnkGuardar_Click(object sender, EventArgs e)
    {

    }
}