using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Descripción breve de Carritodetalle
/// </summary>
public class Carritodetalle
{
    ConsultasADCV data = new ConsultasADCV();
    ConexionADCV con = new ConexionADCV();
    public int idcompra;
    public int idcliente;
    public int detallepedido(int idcom, int idprod)
    {
        int canfilas = 0;
        SqlDataAdapter da = new SqlDataAdapter();
    
        SqlCommand cmd = new SqlCommand();
        DataTable dt = new DataTable();
        cmd.Connection = con.cad;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.CommandText = "carritoagreg";
        cmd.Parameters.Add("@idprod", SqlDbType.Int).Value = idprod;
        cmd.Parameters.Add("@idcompra", SqlDbType.Int).Value = idcom;
        con.conecta();
        canfilas = cmd.ExecuteNonQuery();
        con.desconecta();
        return canfilas;
    }
}

