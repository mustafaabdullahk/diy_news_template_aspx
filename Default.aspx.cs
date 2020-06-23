using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;


public partial class _Default : System.Web.UI.Page
{
    OleDbConnection bag = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));


    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void LinkButton2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Haberincele.aspx");
        
    }
  
}