using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Generarcompra : System.Web.UI.Page
{
    ConsultasADCV datos = new ConsultasADCV();
    ConsultasADCV datos2 = new ConsultasADCV();
    ConsultasADCV datos3 = new ConsultasADCV();
    ConsultasADCV datos4 = new ConsultasADCV();
    ConexionADCV cn = new ConexionADCV();
    DateTime fecha = DateTime.Now;
    protected void Page_Load(object sender, EventArgs e)
    {
        string idUsuario = Session["iduser"].ToString();

        mostrarDatos(idUsuario);
        monto(Convert.ToInt32(Session["idcompra"].ToString())); ;

    }

    public void mostrarDatos(string idusuar)
    {
        DataTable dt = new DataTable();
        lblidpedido.Text = Session["idcompra"].ToString();
        lblidcliente.Text = Session["iduser"].ToString();
        lblfechapedido.Text = fecha.ToString();
        lblfechaentrega.Text = fecha.AddDays(2).ToString();
        lblfechaenvio.Text = fecha.AddDays(1).ToString();
        lstformaenvio.DataSource = datos.extrae("listacompa");
        lstformaenvio.DataTextField = "nombrecompa";
        lstformaenvio.DataValueField = "idcompaenvi";
        lstformaenvio.DataBind();

    }
    public void monto(int idcarr)
    {
        DataTable dt2 = new DataTable();
        dt2 = datos2.extrae("cantiped", "@idcompra", idcarr);
        lbltotalpagar.Text = dt2.Rows[0][0].ToString();
    }


    protected void lstdestinatario_SelectedIndexChanged(object sender, EventArgs e)
    {

    }

    protected void btnComprar_Click(object sender, EventArgs e)
    {
        int newIdPedido = insertapedido();
        //insertar detalles de pedido

        insertadetalle(newIdPedido);
        Response.Write("<Script>alert('Confirmando Compra');window.location.href='EfectuarPago.aspx'</script>");
        //Response.Redirect("~/reportepedido");

    }
    public void insertadetalle(int idpedidonuevo)
    {

        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        cmd.Connection = cn.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "detalleinsertado";
        cmd.Parameters.Add("@idcompra", SqlDbType.Int).Value = idpedidonuevo;
        cmd.Parameters.Add("@idcompracarrito", SqlDbType.Int).Value = Convert.ToInt32(Session["idcompra"].ToString());
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();

    }

    public int insertapedido()
    {
        SqlCommand cmd = new SqlCommand();
        SqlDataAdapter da = new SqlDataAdapter();
        cmd.Connection = cn.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "carritoinser";
        SqlParameter codigo = new SqlParameter("@idcompra", SqlDbType.Int);
        codigo.Direction = ParameterDirection.Output;
        cmd.Parameters.Add(codigo);
        cmd.Parameters.Add("@idcliente", SqlDbType.NChar).Value = Session["idcliente"];
        cmd.Parameters.Add("@fechacompra", SqlDbType.DateTime).Value = fecha;
        cmd.Parameters.Add("@fechaenvio", SqlDbType.DateTime).Value = fecha.AddDays(1);
        cmd.Parameters.Add("@fechacompra", SqlDbType.DateTime).Value = fecha;
        cmd.Parameters.Add("@idcompaenvi", SqlDbType.Int).Value = int.Parse(lstformaenvio.SelectedItem.Value);
        cmd.Parameters.Add("@codigopostal", SqlDbType.NVarChar).Value = txtcodpostal.Text.ToString();
        cmd.Parameters.Add("@lugardeenvio", SqlDbType.NVarChar).Value = txtciudaddestino.Text.ToString();
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        int idp = Convert.ToInt32(cmd.Parameters["@idcompra"].Value);
        return idp;
    }
}