using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class aramasonuc : System.Web.UI.Page
{
    OleDbConnection bag = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));
    protected void Page_Load(object sender, EventArgs e)
    {
        string sorgu = "select * from haberler where (baslik LIKE % +@1+ % ) or (haber LIKE @1+ % ) ORDER BY [Kimlik] DESC";
        OleDbCommand ara = new OleDbCommand(sorgu, bag);
        ara.Parameters.Add("@1", Session["gonder"]);
       

    }

    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Haberincele.aspx?haber=" + Session["gonder"].ToString());
    }
}