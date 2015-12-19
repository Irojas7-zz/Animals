using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tico.Animales.DatAnimales
{
    public class DatCatalogos : DatAbstracta
    {
        public DatCatalogos() { }

        public DataSet ObtenerCatalogos()
        {
            SqlCommand comm = new SqlCommand("sp_Obtener_Catalogos", conn);
            comm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}
