using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Tico.Animales.Business.EntAnimales
{
    public class EntAnimal
    {
        public EntAnimal() { }

        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Tipo_Id { get; set; }
        private EntTipo tipo;

        public EntTipo Tipo
        {
            get {
                if (tipo == null)
                    tipo = new EntTipo();

                return tipo;
            }
            
            set {
                if (tipo == null)
                    tipo = new EntTipo();

                tipo = value;
            }
        }

        public int Color_Id { get; set; }
        private EntColor color;

        public EntColor Color
        {
            get {
                if (color == null)
                    color = new EntColor();

                return color;
            }

            set {
                if (color == null)
                    color = new EntColor();
                color = value;
            }
        }

        public DateTime Fecha_Alta { get; set; }
        public int Genero_Id { get; set; }
        private EntGenero genero;

        public EntGenero Genero
        {
            get {
                if (genero == null)
                    genero = new EntGenero();
                return genero;
            }

            set {
                if (genero == null)
                    genero = new EntGenero();
                genero = value;
            }
        }

        public int Existencia { get; set; }
        public int Edad { get; set; }
        public decimal Peso { get; set; }
        public bool Estatus { get; set; }
        public string FotoPortada { get; set; }
        public string FotoMini { get; set; }
        public string Video { get; set; }
    }
}
