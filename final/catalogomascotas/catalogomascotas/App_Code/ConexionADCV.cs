using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

/// <summary>
/// Descripción breve de ConexionADCV
/// </summary>
public class ConexionADCV
{
    //public SqlConnection cad = new SqlConnection(@"Data Source=VIGGO\VIGGO;Initial Catalog=AccesoriosMascotas;Integrated Security=True");
    public SqlConnection cad = new SqlConnection(@"Data Source=SQL5063.site4now.net;Initial Catalog=DB_A653B0_VigoEsga;User Id=DB_A653B0_VigoEsga_admin;Password=ACSICNARF8");
    public void conecta()
    {
        cad.Open();
    }
    public void desconecta()
    {
        cad.Close();
    }
}