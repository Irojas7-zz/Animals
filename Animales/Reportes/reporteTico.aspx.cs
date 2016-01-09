using CrystalDecisions.CrystalReports.Engine;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tico.Animales.BusAnimales;

public partial class Reportes_reporteTico : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        ReportDocument rep = new ReportDocument();
        rep.Load(Server.MapPath("crAnimales.rpt"));
        rep.SetDataSource(new BusAnimal().Obtener());
        crpAnimales.ReportSource = rep;
    }
}