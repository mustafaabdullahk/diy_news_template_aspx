using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
public partial class admingiris : System.Web.UI.Page
{
   
    OleDbConnection baglanti = new OleDbConnection("Provider=Microsoft.Jet.oledb.4.0; Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));

    protected void Page_Load(object sender, EventArgs e)
    {



        Session["UyeId"]=null;
       
    }

     protected void butadmingiris_Click(object sender, EventArgs e)
    {
        baglanti.Close();
        baglanti.Open();
        OleDbCommand sorgu = new OleDbCommand("select * from kullanici Where KulAd=@Kullanici and KulSifre=@Sifre", baglanti);
        sorgu.Parameters.Add("@Kullanici", TextBox1.Text);
        sorgu.Parameters.Add("@Sifre", TextBox2.Text);
        OleDbDataReader dr = sorgu.ExecuteReader();
        while (dr.Read())
        {
             if (dr[1].ToString()==TextBox1.Text && dr[2].ToString()==TextBox2.Text)
	        {
              Session["UyeId"]= dr[0];     
              Response.Redirect("~/admin/Default.aspx");
            }
            else
            {
                LblMsg.ForeColor = System.Drawing.Color.Red;
                LblMsg.Text = "Kullanıcı adı veya şifre yanlış";
                LblMsg.Visible = true;
                Image1.ImageUrl = "cancel.png";
                Image1.Visible = true;
            }
        }
        
    }

       
    }
