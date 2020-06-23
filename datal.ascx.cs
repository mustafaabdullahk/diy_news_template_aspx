using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class datal : System.Web.UI.UserControl
{
    OleDbConnection bag = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));
    public void datadoldur()
    {
        string sorgu = "Select Top 5 * from haberler order by hit desc";
        OleDbDataAdapter en = new OleDbDataAdapter(sorgu, bag);
        DataTable dt = new DataTable();
        en.Fill(dt);
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        datadoldur();
    }
}