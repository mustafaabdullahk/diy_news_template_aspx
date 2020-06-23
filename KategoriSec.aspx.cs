using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class KategoriSec : System.Web.UI.Page
{
    OleDbConnection bg = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; data source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));
    protected void Page_Load(object sender, EventArgs e)
    {
        bg.Open();
        OleDbCommand TAbloal = new OleDbCommand("Select Top 15 * From haberler where kategori=@1 order by eklenmetarihi desc", bg);
        TAbloal.Parameters.Add("@1", Request["Kategori"]);
        OleDbDataAdapter adap = new OleDbDataAdapter(TAbloal);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        kategoriyegorerepeat.DataSource = dt;
        kategoriyegorerepeat.DataBind();
        bg.Close();
    }
}