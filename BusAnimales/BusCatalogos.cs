using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Tico.Animales.Business.EntAnimales;
using Tico.Animales.DatAnimales;

namespace Tico.Animales.BusAnimales
{
    public class BusCatalogos
    {
        public BusCatalogos() { }
        /// <summary>
        /// 0 Tipo, 
        /// 1 Color
        /// 2 Genero
        /// </summary>
        /// <returns></returns>
        public List<List<EntCatalogos>> Obtener()
        {
            DataSet ds = new DatCatalogos().ObtenerCatalogos();
            List<List<EntCatalogos>> multiList = new List<List<EntCatalogos>>();

            foreach (DataTable dt in ds.Tables)
            {
                List<EntCatalogos> list = new List<EntCatalogos>();

                foreach (DataRow dr in dt.Rows) 
                {
                    
                    EntCatalogos ct = new EntCatalogos();

                    ct.Id = Convert.ToInt32(dr[0]);
                    ct.Nombre = Convert.ToString(dr[1]);
                    ct.Descripcion = Convert.ToString(dr[2]);
                    ct.Estatus = Convert.ToBoolean(dr[3]);

                    list.Add(ct);
                    }

                multiList.Add(list);
            }
            return multiList;
        }

    }
}
