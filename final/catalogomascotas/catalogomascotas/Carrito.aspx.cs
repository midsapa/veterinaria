using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Carrito : System.Web.UI.Page
{
    ConsultasADCV data = new ConsultasADCV();
    ConexionADCV con = new ConexionADCV();
    private int compra;
    private object idcompra;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["idcompra"] != null)
        {
            int idp = int.Parse(Request.QueryString["idcompra"].ToString());
            compracarrito(idp);
            pagos(idp);
        }
    
    }
    public void compracarrito(int idp)
    {
        grdcarrito.DataSource = data.extrae("carritotabla", "@idcompra", idp);
        grdcarrito.DataBind();
    }

    public void pagos(int idp)
    {
        listpagos.DataSource = data.extrae("precio", "@idcompra", idp);
        listpagos.DataBind();
    }


    protected void btncomprar_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Generarcompra.aspx?idcompra=" + int.Parse(Session["idcompra"].ToString()));
    }
    protected void editarcantidad()
    {
        GridViewRow fila = grdcarrito.SelectedRow;
        int idprod = Convert.ToInt32(grdcarrito.DataKeys[fila.RowIndex].Value);
        Session["idprod"] = fila;
        DataTable tabla = new DataTable();
        tabla = data.extrae("detallecambiar", "@idprod", idprod);
        txtcant.Text = tabla.Rows[0][3].ToString();
    }

    protected void grdcarrito_SelectedIndexChanged(object sender, EventArgs e)
    {
        editarcantidad();
        lblcant.Visible = true;
        txtcant.Visible = true;
        btncanc.Visible = true;
        btnguardar.Visible = true;
    }
    protected void btnguardar_Click(object sender, EventArgs e)
    {
       
    GridViewRow fila = grdcarrito.SelectedRow;
        int idprod = Convert.ToInt32(grdcarrito.DataKeys[fila.RowIndex].Value);
        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "editacanti";
        cmd.Parameters.Add("@idprod", SqlDbType.Int).Value = idprod;
        cmd.Parameters.Add("@cantidad", SqlDbType.Int).Value = int.Parse(txtcant.Text.ToString());

        con.conecta();
        cmd.ExecuteNonQuery();
        con.desconecta();
        int idp = int.Parse(Request.QueryString["idcompra"].ToString());

        grdcarrito.DataSource = data.extrae("seleccionarcarritode", "@idcompra", idp);
        grdcarrito.DataBind();

       
       
    }
    protected void btncanc_Click(object sender, EventArgs e)
    {
        lblcant.Visible = false;
        txtcant.Visible = true;
        btncanc.Visible = false;
        btnguardar.Visible = false;
    }

    protected void btncomprar_Click1(object sender, EventArgs e)
    {
 
    }

    protected void listpagos_SelectedIndexChanged(object sender, EventArgs e)
    {
       
       
    }
}

