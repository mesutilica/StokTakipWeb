using System;
using StokTakip.BL;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakipWeb
{
    public partial class UrunDetay : System.Web.UI.Page
    {
        UrunManager urunManager = new UrunManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunBilgileriniYukle();//Sayfa yüklenirken ürün bilgilerinin de yüklenmesi için metodu page load da çağırmamız gerek
        }
        void UrunBilgileriniYukle()
        {
            try
            {
                if (Request.QueryString["uid"] != null)//Eğer adres çubuğunda uid değeri null değilse yani varsa
                {

                    var urunId = int.Parse(Request.QueryString["uid"]);//adres çubuğundan gelen uid içerisindeki ürün ıd bilgisini yakalıyoruz
                    var urun = urunManager.Get(urunId);//yakaladığımız ürün ıd değerini urunmanager içerisindeki get metoduna yolluyoruz, bu metot bize ilgili ıd ye sahip ürünü bulup getirecektir
                    if (urun != null)
                    {
                        LtUrunAdi.Text = urun.UrunAdi;
                        LtUrunAciklama.Text = urun.UrunAciklamasi;
                        LtUrunAciklama.Text += "Fiyat : " + urun.UrunFiyati + "₺ <hr />";
                        LtUrunAciklama.Text += "Eklenme Tarihi : " + urun.EklenmeTarihi.ToShortDateString();
                        Image1.ImageUrl = "~/Uploads/" + urun.Resim;//Ekrandaki image1 kontrolüne göstermek istediğimiz resmin yolunu veriyoruz
                    }
                }

            }
            catch (Exception)
            {
                LtUrunAdi.Text = "Hata Oluştu!";
            }            
        }
    }
}