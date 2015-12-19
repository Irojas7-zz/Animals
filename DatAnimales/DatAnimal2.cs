using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tico.Animales.DatAnimales
{
    public class DatAnimal : DatAbstracta
    {
        public DatAnimal() { }

        public DataTable Obtener() {
            SqlCommand comm = new SqlCommand("sp_Obtener_Animales", conn);
            comm.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable Obtener(int Id) {
            SqlCommand comm = new SqlCommand("sp_Obtener_Animal", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int,ParameterName="@Id",Value=Id });
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public int Insertar(string Nombre, int Tipo_Id, int Color_Id, int Genero_Id, int Existencias, int Edad, decimal Peso, bool Estatus, string FotoPortada, string FotoMini, string Video)
        {
            SqlCommand comm = new SqlCommand("sp_Insert_Animal", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.VarChar, ParameterName = "@Nombre", Value = Nombre });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Tipo", Value = Tipo_Id });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Color", Value = Color_Id });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Genero", Value = Genero_Id });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Existencia", Value = Existencias });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Edad", Value = Edad });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Decimal, ParameterName = "@Peso", Value = Peso });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Bit, ParameterName = "@Estatus", Value = Estatus });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.NVarChar, ParameterName = "@FotoPortada", Value = FotoPortada });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.NVarChar, ParameterName = "@FotoMini", Value = FotoMini });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.NVarChar, ParameterName = "@Video", Value = Video });

            try
            {
                conn.Open();
                int filas = comm.ExecuteNonQuery();
                conn.Close();
                return filas;
            }
            catch (Exception ex)
            {
                conn.Close();
                throw new ApplicationException(string.Format("Error al insertar el animal {0} en capa de datos, {1}", Nombre, ex.Message));
            }
        }

        public DataTable Actualizar(int Id, string Nombre, int Tipo_Id, int Color_Id, int Genero_Id, int Existencias, int Edad, decimal Peso, bool Estatus, string FotoPortada, string FotoMini, string Video)
        {
            SqlCommand comm = new SqlCommand("sp_Update_Animal", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Id", Value = Id });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.VarChar, ParameterName = "@Nombre", Value = Nombre });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Tipo", Value = Tipo_Id });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Color", Value = Color_Id });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Genero", Value = Genero_Id });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Existencia", Value = Existencias });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Edad", Value = Edad });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Decimal, ParameterName = "@Peso", Value = Peso });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Bit, ParameterName = "@Estatus", Value = Estatus });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.NVarChar, ParameterName = "@FotoPortada", Value = FotoPortada });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.NVarChar, ParameterName = "@FotoMini", Value = FotoMini });
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.NVarChar, ParameterName = "@Video", Value = Video });

            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }

        public DataTable Eliminar(int Id)
        {
            SqlCommand comm = new SqlCommand("sp_Delete_Animal", conn);
            comm.CommandType = CommandType.StoredProcedure;
            comm.Parameters.Add(new SqlParameter() { SqlDbType = SqlDbType.Int, ParameterName = "@Id", Value = Id });
            SqlDataAdapter da = new SqlDataAdapter(comm);
            DataTable dt = new DataTable();
            da.Fill(dt);
            return dt;
        }
    }
}
