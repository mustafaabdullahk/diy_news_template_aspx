using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;

public partial class admin : System.Web.UI.Page
{

    OleDbConnection bag = new OleDbConnection("Provider=Microsoft.jet.oledb.4.0;Data Source=" + HttpContext.Current.Server.MapPath("~/App_Data/vt.mdb"));
    public void iceriktemizle()
    {
        TxtHBaslik.Text = "";
        TxtHİcerik.Text = "";
        TxtEkleyen.Text = "";
    }
    public void kayitsil()
    {
        string cumle = "delete from haberler where kimlik=@1";
        OleDbCommand sil = new OleDbCommand(cumle, bag);
        sil.Parameters.Add("@1", Session["Kayitsec"]);
        bag.Close();
        bag.Open();
        sil.ExecuteNonQuery();
        bag.Close();
        griddoldur();
        ImgMsg.ImageUrl = "ok.png";
        ImgMsg.Visible = true;
        LblMsg.Text = "Haber Silindi";
        LblMsg.Visible = true;
        iceriktemizle();
    }
    public void kaydet()
    {
       
        OleDbCommand kaydet = new OleDbCommand("insert into haberler(baslik,haber,ekleyen,eklenmetarihi,foto,kategori) values(@1,@2,@3,@4,@5,@6)", bag);
        if (TxtHBaslik.Text=="" || TxtHİcerik.Text=="" || FileUpload1.FileName=="" || dropkategori.Text=="")
        {
            LblMsg.Text = "Tüm Alanları Doldurup Haber Fotoğrafı Seçiniz";
            LblMsg.Visible = true;
            Image1.ImageUrl = "cancel.png";
            Image1.Visible = true;
            
        }
        else
        { 
        bag.Close();
        bag.Open();
        kaydet.Parameters.Add("@1", TxtHBaslik.Text);
        kaydet.Parameters.Add("@2", TxtHİcerik.Text);
        kaydet.Parameters.Add("@3", TxtEkleyen.Text);
        kaydet.Parameters.Add("@4", System.DateTime.Now.ToShortDateString());
        kaydet.Parameters.Add("@5", FileUpload1.FileName);
        kaydet.Parameters.Add("@6", dropkategori.Text);
        kaydet.ExecuteNonQuery();
        griddoldur();  
        FileUpload1.SaveAs(Server.MapPath("images/" + FileUpload1.FileName));
        ImgMsg.ImageUrl = "ok.png";
        ImgMsg.Visible = true;
        LblMsg.Text = "Haber Girildi";
        LblMsg.Visible = true;
        }
        iceriktemizle();
    }
    public void griddoldur()
    {
        OleDbDataAdapter doldur = new OleDbDataAdapter("select * from haberler", bag);
        DataTable dt = new DataTable();
        doldur.Fill(dt);
        GridView1.DataSource =dt;
        GridView1.DataBind();
    }
    public void güncelle()
    {
        if (TxtHBaslik.Text == "" || TxtHİcerik.Text == "" || dropkategori.Text == "")
        {
            LblMsg.Text = "Tüm Alanları Doldurup Haber Fotoğrafı Seçiniz";
            LblMsg.Visible = true;
            Image1.ImageUrl = "cancel.png";
            Image1.Visible = true;

        }
        else
        {
            string sorgu = "update haberler set baslik=@1,haber=@2,ekleyen=@3,foto=@4,kategori=@5 where kimlik=@6";
            OleDbCommand güncelle = new OleDbCommand(sorgu, bag);
            OleDbDataReader dr;
            bag.Close();
            bag.Open();
            güncelle.Parameters.Add("@1", TxtHBaslik.Text);
            güncelle.Parameters.Add("@2", TxtHİcerik.Text);
            güncelle.Parameters.Add("@3", TxtEkleyen.Text);
            güncelle.Parameters.Add("@5", dropkategori.Text);
            if (FileUpload1.FileName!="")
        {
            güncelle.Parameters.Add("@4", FileUpload1.FileName); 
            FileUpload1.SaveAs(Server.MapPath("images/" + FileUpload1.FileName));
        }
        else
        {
            güncelle.Parameters.Add("@4", Image1.ImageUrl);
        } 
        güncelle.Parameters.Add("@6", Session["Kayitsec"]);
        dr = güncelle.ExecuteReader();
        dr.Read();
        while (dr.Read())
        {
            TxtHİcerik.Text=dr[1].ToString();
            TxtHBaslik.Text=dr[0].ToString();
            TxtEkleyen.Text=dr[2].ToString();
            Image1.ImageUrl = Server.MapPath("images"+dr[6].ToString());
            dropkategori.Text = dr[7].ToString();
            
        }
        }
        
       
        ImgMsg.ImageUrl = "ok.png";
        ImgMsg.Visible = true;
        LblMsg.Text = "Haber Güncellendi";
        LblMsg.Visible = true;
        griddoldur();
        iceriktemizle();
        
    }
    public void dropdoldur()
    {
        string dold = "select * from kategoriler ";
        OleDbDataAdapter listele = new OleDbDataAdapter(dold, bag);
        DataTable dt = new DataTable();
        listele.Fill(dt);
        dropkategori.DataSource = dt;
        dropkategori.DataBind();
        dropkategori.Items.Insert(0, "Kategori Seçiniz");
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        
        if (Session["UyeId"] == null)
        {
            Response.Redirect("admingiris.aspx");
            Page.Dispose();
        }
       
        if (!Page.IsPostBack==true)
        {
           griddoldur();
           iceriktemizle();
           dropdoldur();
        }
       
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        güncelle();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        kaydet();
    }
    protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
    {
        LblMsg.Visible = false;
        ImgMsg.Visible = false;
        Button1.Enabled = false;
        Button2.Enabled = true;
        Button3.Enabled = true;
        GridView1.SelectedIndex = e.NewSelectedIndex;
        Session["Kayitsec"] = GridView1.DataKeys[e.NewSelectedIndex].Value;
        bag.Close();
        bag.Open();
        string sorgu = "select * from haberler where Kimlik=@1";
        OleDbCommand Kayit = new OleDbCommand(sorgu, bag);
        Kayit.Parameters.Add("@1", Session["Kayitsec"]);
        OleDbDataReader oku;
        oku = Kayit.ExecuteReader();
        while (oku.Read())
        {
            TxtHBaslik.Text = oku[1].ToString();
            TxtHİcerik.Text = oku[2].ToString();
            TxtEkleyen.Text = oku[3].ToString();
            Label3.Text = oku[0].ToString();
            Image1.ImageUrl = "images/" + oku[6].ToString();
            dropkategori.DataValueField=oku[7].ToString();
           
           
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        kayitsil();
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        bag.Close();
        Response.Redirect("admingiris.aspx");
        Session["UyeId"] = null;
       
    }
}