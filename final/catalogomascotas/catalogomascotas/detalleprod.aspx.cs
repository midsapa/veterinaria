using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

public partial class detalleprod : System.Web.UI.Page
{
    ConsultasADCV data = new ConsultasADCV();
    ConexionADCV con = new ConexionADCV();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.QueryString["idprod"] != null)
        {
            int idp = int.Parse(Request.QueryString["idprod"].ToString());
            int idpe = int.Parse(Request.QueryString["idprod"].ToString());
            muestracompra(idp);
            muestradeta(idpe);
        }
    }
    public void muestracompra(int idp)
    {
        datprodde.DataSource = data.extrae("imagendeta", "@idprod", idp);
        datprodde.DataBind();
    }
    public void muestradeta(int idpe)
    {
        
        datdetallito.DataSource = data.extrae("detalleprod", "@idprod", idpe);
        datdetallito.DataBind();
    }

    protected void btncarrito_Click(object sender, EventArgs e)
    {
    }
}