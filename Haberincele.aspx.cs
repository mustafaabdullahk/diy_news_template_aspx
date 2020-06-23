using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class Haberincele : System.Web.UI.Page
{
    OleDbConnection bag = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0; data source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));

    protected void Page_Load(object sender, EventArgs e)
    {

        if (Request["Kimlik"] == null)
        {
            LblMsg.Text = "Seçili Haber Yok";
            ImgVarmi.ImageUrl = "~/images/bilmem.png";
            ImgVarmi.Visible = true;
        }
        else
        {
            Panel1.Visible = true;
            bag.Close();
            bag.Open();

            OleDbCommand doldur = new OleDbCommand("select * from haberler where Kimlik=@1", bag);
            doldur.Parameters.Add("@1", Request["Kimlik"]);
            OleDbDataReader oku;
            oku = doldur.ExecuteReader();

            while (oku.Read())
            {
                Image1.ImageUrl = "~/admin/images/" + oku[6].ToString();
                LblHBaslik.Text = oku[1].ToString();
                LblHicerik.Text = oku[2].ToString();
                LblEkleyen.Text = oku[3].ToString();
                LblHit.Text = oku[4].ToString();
                LblKategori.Text = oku[7].ToString();

            }
        }

        if (Page.IsPostBack != true)
        {
            bag.Close();
            bag.Open();
            OleDbCommand hit = new OleDbCommand("update haberler set hit=hit+1 where Kimlik=@1", bag);
            //hit.Parameters.Add("@1", Request["Kimlik"]);
            //hit.ExecuteNonQuery();
        }
    }
}

