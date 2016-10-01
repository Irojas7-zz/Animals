using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tico.Animales.BusAnimales;
using Tico.Animales.Business.EntAnimales;

public partial class GridSexta : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {

            if (!IsPostBack)
            {
                CargarGridAnimales();
                CargarTipo();
                CargarColor();
                CargarGenero();
            }
        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
    private void CargarGenero()
    {

        List<EntGenero> lst = new BusAnimal().ObtenerGenero();
        DropDownList ddlGenero = (DropDownList)gvAnimales.FooterRow.FindControl("ddlGeneroIdFT");
        ddlGenero.DataSource = lst;
        ddlGenero.DataTextField = "Nombre";
        ddlGenero.DataValueField = "Id";
        ddlGenero.DataBind();

    }
    private void CargarColor()
    {
        List<EntColor> lst = new BusAnimal().ObtenerColor();
        DropDownList ddlColor = (DropDownList)gvAnimales.FooterRow.FindControl("ddlColorIdFT");
        ddlColor.DataSource = lst;
        ddlColor.DataTextField = "Nombre";
        ddlColor.DataValueField = "Id";
        ddlColor.DataBind();

    }
    private void CargarTipo()
    {
        List<EntTipo> lst = new BusAnimal().ObtenerTipo();
        DropDownList ddlTipo = (DropDownList)gvAnimales.FooterRow.FindControl("ddlTipoIdFT");
        ddlTipo.DataSource = lst;
        ddlTipo.DataTextField = "Nombre";
        ddlTipo.DataValueField = "Id";
        ddlTipo.DataBind();
    }
    private void MostrarMensaje(string p)
    {
        string mensaje = "Error: " + p;
        ScriptManager.RegisterStartupScript(this, GetType(), "", "alert('" + mensaje + "')", true);
    }
    private void CargarGridAnimales()
    {
        gvAnimales.DataSource = new BusAnimal().Obtener();
        gvAnimales.DataBind();
    }
    protected void gvAnimales_RowEditing(object sender, GridViewEditEventArgs e)
    {
        try
        {

        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
    protected void gvAnimales_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
    {
        try
        {

        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
    protected void gvAnimales_RowUpdating(object sender, GridViewUpdateEventArgs e)
    {
        try
        {

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

        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
    protected void btnAgregarFT_Click(object sender, EventArgs e)
    {
        try
        {

        }
        catch (Exception ex)
        {
            MostrarMensaje(ex.Message);
        }
    }
}