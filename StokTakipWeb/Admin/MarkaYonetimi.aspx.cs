using StokTakip.BL;
using StokTakip.Entities;
using System;
using System.Web;

namespace StokTakipWeb
{
    public partial class MarkaYonetimi : System.Web.UI.Page
    {
        MarkaManager markaManager = new MarkaManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            try
            {
                var marka = new Marka
                {
                    Aktif = cbAktif.Checked,
                    EklenmeTarihi = DateTime.Now,
                    MarkaAciklamasi = txtMarkaAciklamasi.Text,
                    MarkaAdi = txtMarkaAdi.Text
                };
                if (FuMarkaLogo.HasFile)//Eğer resim yükleme elemanından bir resim seçilmişse
                {
                    FuMarkaLogo.SaveAs(Server.MapPath("~/Uploads/" + FuMarkaLogo.FileName));//file uploaddan seçilen resmi sunucudaki uploads klasörüne kaydet
                    marka.MarkaLogo = FuMarkaLogo.FileName;
                }
                if (string.IsNullOrEmpty(lblId.Text))
                    markaManager.Add(marka);//yukarda oluşturduğumuz marka nesnesini veritabanına ekle
                else
                {
                    marka.Id = int.Parse(lblId.Text);
                    markaManager.Update(marka);
                }
                Response.Redirect("MarkaYonetimi.aspx");//Sayfayı yönlendir
            }
            catch (Exception)
            {
                lblMesaj.Text = "Hata Oluştu";
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                var marka = markaManager.Get(int.Parse(GridView1.SelectedRow.Cells[0].Text));
                if (marka != null)
                {
                    txtMarkaAdi.Text = marka.MarkaAdi;
                    txtMarkaAciklamasi.Text = marka.MarkaAciklamasi;
                    lblEklenmeTarihi.Text = marka.EklenmeTarihi.ToString();
                    cbAktif.Checked = marka.Aktif;
                    ImgResim.ImageUrl = "~/Uploads/" + marka.MarkaLogo;
                    lblId.Text = marka.Id.ToString();
                }
                btnKaydet.Text = "Güncelle";
                TabContainer1.ActiveTabIndex = 1;
            }
            catch (Exception)
            {
                lblMesaj.Text = "Hata Oluştu!";
            }
        }
    }
}