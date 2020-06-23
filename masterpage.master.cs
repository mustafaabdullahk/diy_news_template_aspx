using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class MasterPage : System.Web.UI.MasterPage
{
    
        OleDbConnection bag = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));
        OleDbDataReader oku;
        OleDbDataReader oku2;
        OleDbDataReader oku3;

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
        
        bag.Close();
        bag.Open();
        OleDbCommand kmt = new OleDbCommand("select * from havadurumu where tarih=@1",bag);
        kmt.Parameters.Add("@1", System.DateTime.Now.ToShortDateString());
        oku = kmt.ExecuteReader();
        OleDbCommand kmt2 = new OleDbCommand("select * from haberler where eklenmetarihi=@1 ", bag);
        kmt2.Parameters.Add("@1", System.DateTime.Now.ToShortDateString());
        OleDbDataReader oku2;
        oku2= kmt2.ExecuteReader();
        //OleDbCommand kmt3 = new OleDbCommand("select * from haberler where eklenmetarihi=@1 ", bag);
        //switch (DropDownList1.Text)
        //{
        //    case "bugün":
        //        kmt3.Parameters.Add("@1", System.DateTime.Now.Day.ToString());
        //        oku3 = kmt3.ExecuteReader();
        //        while (oku3.Read())
        //        {

                    
                    



        //        }
        //        break;
                
                
 
                
               
        //    case "bu ay":
        //        kmt3.Parameters.Add("@1", System.DateTime.Now.Month.ToString());
        //        oku3 = kmt3.ExecuteReader();
        //        break;
        //    case "bu yıl":
        //        kmt3.Parameters.Add("@1", System.DateTime.Now.Year.ToString());
        //        oku3 = kmt3.ExecuteReader();
        //        break;
        //}
        while (oku.Read())
        {
            if (oku[0].ToString()=="")
            {

                switch (oku[0].ToString())
                {

                    case "Bulutlu":
                        imghdurum.ImageUrl = "~/images/bulutlu.png";
                        Label1.Text = oku[1].ToString();
                        break;
                    case "Güneşli":
                        imghdurum.ImageUrl = "~/images/gunesli.png";
                        Label1.Text = oku[1].ToString();
                        break;
                    case "Parçalı Bulutlu":
                        imghdurum.ImageUrl = "~/images/pbulutlu.png";
                        Label1.Text = oku[1].ToString();
                        break;
                    case "Karlı":
                        imghdurum.ImageUrl = "~/images/karli.png";
                        Label1.Text = oku[1].ToString();
                        break;
                    case "Yağmurlu":
                        imghdurum.ImageUrl = "~/images/yagmurlu.png";
                        Label1.Text = oku[1].ToString();
                        break;
                    default:
                        break;
                }
            }
            else
            {
                imghdurum.ImageUrl = "/images/bilmem.png";
                Label1.Text = "Durum Girilmemiş :(";
            }
          
            
        }
        while (oku2.Read())
        {
            
                LinkButton1.Text = oku2[1].ToString();
                Session["secili"] = oku2[0].ToString();
                


        }

  
    }
    protected void TextBox1_Load(object sender, EventArgs e)
    {
        TextAra.Text = "";
    }
    protected void TextAra_Unload(object sender, EventArgs e)
    {
        TextAra.Text = "Aranacak kelime";
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Haberincele.aspx?Kimlik="+Session["secili"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["gonder"] = "gökmen";
        Response.Redirect("~/Haberincele.aspx?haber=" + Session["gonder"].ToString());
    }


    protected void DataList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Lben_Click(object sender, EventArgs e)
    {

    }
}
