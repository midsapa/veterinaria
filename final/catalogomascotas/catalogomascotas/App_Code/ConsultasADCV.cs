using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI.WebControls;
/// <summary>
/// Descripción breve de ConsultasADCV
/// </summary>
public class ConsultasADCV
{
    ConexionADCV con = new ConexionADCV();

    public DataTable extrae(string nomsp, string nomparam, string valorparam)
    {
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();

        cmd.Connection = con.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = nomsp;
        cmd.Parameters.Add(nomparam, SqlDbType.VarChar).Value = valorparam;
        con.conecta();
        da.SelectCommand = cmd;
        da.Fill(dt);
        con.desconecta();

        return dt;
    }
    public string getvalor(string nomsp, string nomparam, string valorparam)
    {
        string res = "?";
        DataTable dt1 = new DataTable();
        dt1 = extrae(nomsp, nomparam, valorparam);
        int nrows = dt1.Rows.Count;
        if (nrows >= 1) dt1.Rows[0][0].ToString();
        return res;
    }

    public DataTable extrae(string nomsp, string nomparam, int valorparam)
    {
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();

        cmd.Connection = con.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = nomsp;
        cmd.Parameters.Add(nomparam, SqlDbType.Int).Value = valorparam;
        con.conecta();
        da.SelectCommand = cmd;
        da.Fill(dt);
        con.desconecta();

        return dt;
    }

    public DataTable extrae(string nomsp)
    {
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        SqlDataAdapter da = new SqlDataAdapter();

        cmd.Connection = con.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = nomsp;
        con.conecta();
        da.SelectCommand = cmd;
        da.Fill(dt);
        con.desconecta();

        return dt;
    }

    public void rellenaLista(string nombresp, string campover, string campovalor, DropDownList lista) /*para el DropDownList*/
    {
        lista.DataSource = extrae(nombresp);
        lista.DataTextField = campover;
        lista.DataValueField = campovalor;
        lista.DataBind();
    }
}