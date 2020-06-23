using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Data.OleDb;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;

public partial class HaberManset : System.Web.UI.UserControl
{
    OleDbConnection bg = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; data source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));
      
    protected void Page_Load(object sender, EventArgs e)
    {
        bg.Open();
        OleDbCommand TAbloal = new OleDbCommand("Select Top 15 * From haberler order by eklenmetarihi desc", bg);
        OleDbDataAdapter adap = new OleDbDataAdapter(TAbloal);
        DataTable dt = new DataTable();
        adap.Fill(dt);
        HaberManseti.DataSource = dt;
        HaberManseti.DataBind();
        bg.Close();
        
        
        
    }
}
