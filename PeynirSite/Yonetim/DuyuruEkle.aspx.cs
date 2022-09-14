using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data.SqlClient;

namespace PeynirSite.Yonetim
{
    public partial class DuyuruEkle : System.Web.UI.Page
    {
        string conf_baglanti = WebConfigurationManager.ConnectionStrings["dbPeynirConnectionString"].ConnectionString;
        DateTime bugun = DateTime.Now;
        protected void Page_Load(object sender, EventArgs e)
        {
            lblTarih.Text = bugun.ToString();
        }

        protected void btnResimEkle_Click(object sender, EventArgs e)
        {
            if(FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentType == "image/jpeg" || FileUpload1.PostedFile.ContentType == "image/png" || FileUpload1.PostedFile.ContentType == "image/jpg")
                {
                    string ResimAd = FileUpload1.FileName.ToString();
                    FileUpload1.SaveAs(Server.MapPath("~/images/" + ResimAd));
                    lblResim.Text = ResimAd.ToString();
                }
                else
                {
                    lblResim.Text = "Lütfen jpeg,jpg veya png uzantılı resim yükleyiniz.";

                }
            }
            else
            {
                lblResim.Text = "Resim Seçilmedi.";
            }
        }

        protected void btnYayımla_Click(object sender, EventArgs e)
        {
            SqlConnection baglanti = new SqlConnection(conf_baglanti);
            baglanti.Open();
            SqlCommand komut = new SqlCommand("insert into tblDuyuru(Baslik,Ozet,Yazi,Resim) values (@Baslik,@Ozet,@Yazi,@Resim)", baglanti);
            komut.Parameters.AddWithValue("@Baslik", txtBaslik.Text.ToString());
            komut.Parameters.AddWithValue("@Ozet", txtOzet.Text.ToString());
            komut.Parameters.AddWithValue("@Yazi", txtYazi.Text.ToString());
            komut.Parameters.AddWithValue("@Resim", lblResim.Text.ToString());
            komut.ExecuteNonQuery();
            baglanti.Close();
            Response.Redirect("DuyuruEkle.aspx");
        }
    }
}