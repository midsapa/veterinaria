using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class casas : System.Web.UI.Page
{
    ConsultasADCV data = new ConsultasADCV();
    ConexionADCV con = new ConexionADCV();
    Carritodetalle detcarrito = new Carritodetalle();
    int idprod = 1;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {
            listacomidas();
            if (Session["idcompra"] == null)
                Session["idcompra"] = compra("Daniela").ToString();


        }
    }
    public void listacomidas()
    {
        dtotros.DataSource = data.extrae("listotros");
        dtotros.DataBind();
    }
    public int compra(string idcliente)
    {
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        cmd.Connection = con.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "pedidohecho";
        cmd.Parameters.Add("@idcliente", SqlDbType.NVarChar).Value = idcliente;
        SqlParameter outParam = cmd.Parameters.Add("@idcompra", SqlDbType.Int);
        outParam.Direction = ParameterDirection.Output;
        con.conecta();
        cmd.ExecuteNonQuery();
        con.desconecta();
        return int.Parse(cmd.Parameters["@idcompra"].Value.ToString());
    }

    protected void muestra(object source, DataListCommandEventArgs e)
    {
        if (e.CommandName == "verdet")
        {
            int idprod = int.Parse(dtotros.DataKeys[e.Item.ItemIndex].ToString());
            Session["idprod"] = idprod;
            Response.Redirect("~/detalleotros.aspx?idprod=" + int.Parse(Session["idprod"].ToString()));
        }

        if (e.CommandName == "agregarcar")
        {
            int error = 1;
            int idprod = int.Parse(dtotros.DataKeys[e.Item.ItemIndex].ToString());
            error = detcarrito.detallepedido(int.Parse(Session["idcompra"].ToString()), idprod);
            if (error == 1)
            {
                Response.Redirect("~/Carrito.aspx?idcompra=" + int.Parse(Session["idcompra"].ToString()));
            }
        }
    }
}