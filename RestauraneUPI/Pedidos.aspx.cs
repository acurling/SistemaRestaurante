using Microsoft.Win32;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestauraneUPI
{
    public partial class Pedidos : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
           
                leermesa();
            
        }


     
        protected void leermesa()
        {

            SqlDataReader registro;
            SqlConnection conexion;
            try
            {

                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                conexion = new SqlConnection(s);
                conexion.Open();
                SqlCommand comando = new SqlCommand("select codigo, ocupada from mesa ", conexion);
                registro = comando.ExecuteReader();

                while (registro.Read())
                {
                    bool ocupada = Convert.ToBoolean(registro[1].ToString());
                    if (int.Parse(registro[0].ToString()) == 1 )
                    {
                        if (ocupada)
                        {
                            ImageButton1.ImageUrl = "~/Imagenes/mesaActiva.png";
                        }
                        else
                        {
                            ImageButton1.ImageUrl = "~/Imagenes/MesaDesactivada.png";
                        }
                    } else  if (int.Parse(registro[0].ToString()) == 2)
                    {
                        if (ocupada)
                        {
                            ImageButton2.ImageUrl = "~/Imagenes/mesaActiva.png";
                        }
                        else
                        {
                            ImageButton2.ImageUrl = "~/Imagenes/MesaDesactivada.png";
                        }
                    } else if (int.Parse(registro[0].ToString()) == 3)
                    {
                        if (ocupada)
                        {
                            ImageButton3.ImageUrl = "~/Imagenes/mesaActiva.png";
                        }
                        else
                        {
                            ImageButton3.ImageUrl = "~/Imagenes/MesaDesactivada.png";
                        }
                    }
                }
                
                registro.Close();
            }
            catch (Exception)
            {

                throw;
            }

            conexion.Close();

        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton1.ImageUrl = "~/Imagenes/mesaActiva.png";
            Global.nmesa = 1;
            Response.Redirect("ordenes.aspx");
        }



        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton2.ImageUrl = "~/Imagenes/mesaActiva.png";
            Global.nmesa = 2;
            Response.Redirect("ordenes.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton3.ImageUrl = "~/Imagenes/mesaActiva.png";
            Global.nmesa = 3;
            Response.Redirect("ordenes.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            ImageButton3.ImageUrl = "~/Imagenes/mesaActiva.png";
            Global.nmesa = 4;
            Response.Redirect("orden.aspx");
        }
    }
}