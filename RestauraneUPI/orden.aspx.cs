using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace RestauraneUPI
{
    public partial class orden : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LlenarCliente();
                LlenarMesero();
                tmesa.Text = Global.nmesa.ToString();

            }
             
        }

        protected void LlenarCliente()
        {
            string constr = ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select CODIGO, NOMBRE from Cliente"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            dcliente.DataSource = dt;

                            dcliente.DataTextField = dt.Columns["nombre"].ToString();
                            dcliente.DataValueField = dt.Columns["codigo"].ToString();
                            dcliente.DataBind(); // refrescar 
                        }
                    }
                }
            }
        }
        
        protected void LlenarMesero()
        {
            string constr = ConfigurationManager.ConnectionStrings["Conexion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("select CODIGO, NOMBRE from mesero"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);
                            dmesero.DataSource = dt;

                            dmesero.DataTextField = dt.Columns["nombre"].ToString();
                            dmesero.DataValueField = dt.Columns["codigo"].ToString();
                            dmesero.DataBind();
                        }
                    }
                }
            }
        }

        protected void AcutalizarMesa()
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();

                SqlCommand comando = new SqlCommand("update mesa set ocupada = 1 where codigo = '" + int.Parse(tmesa.Text) + "'", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
                Response.Redirect("pedidos.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }

        protected void Bingresar_Click(object sender, EventArgs e)
        {
            try
            {
                String s = System.Configuration.ConfigurationManager.ConnectionStrings["conexion"].ConnectionString;
                SqlConnection conexion = new SqlConnection(s);
                conexion.Open();
                string pedido = tmesa.Text;

                SqlCommand comando = new SqlCommand(" INSERT INTO Pedido (codigomesa,codigomesero codigocliente,pedido VALUES('" + int.Parse(tmesa.Text) + "', '" + int.Parse(dmesero.SelectedValue) + "', '" + int.Parse(dcliente.SelectedValue) + "'," +
                    " '" + torden.Text + "' )", conexion);
                comando.ExecuteNonQuery();
                conexion.Close();
                AcutalizarMesa();
                Response.Redirect("pedidos.aspx");
            }
            catch (Exception)
            {

                throw;
            }
        }
    }
}