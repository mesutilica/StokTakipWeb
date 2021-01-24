using StokTakip.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakipWeb
{
    public partial class Giris : System.Web.UI.Page
    {
        KullaniciManager kullaniciManager = new KullaniciManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            //Linq sorgularında k => k.... şeklindeki kullanıma lambda expression denir
            var kullanici = kullaniciManager.Get(k => k.Email == txtKullaniciAdi.Text && k.KullaniciSifre == txtSifre.Text && k.Aktif == true);//kullanicimanager içerisindeki list metodunu çağırıp ona listelenecek kullanıcılar için şartlarımızı gönderiyoruz parantez içerisinde. Burada k= ile başladığımız kod lambda expressiondur ve bu k. dan sonra c# k yı aynı var anahtar kelimesindeki gibi otomatik olarak kullanici tipinde bir nesne şeklinde algılar, yani k. dan sonra k nın bir kullanici nesnesi olduğunu bilir ve sonraki yazımlarda k. dedikten sonra kullanici sınıfının içerisindeki özellikleri bize getirir. Biz de k.email ve k.sifre ile ön yüzdeki textbox lardan gelen bilgileri veritabanına yollarız. Bu sorgu sonucunda geriye ilgili kullanıcı adı ve şifreye sahip kayıtlar döner. Eğer şarta uyan kayıt yoksa kullanici boş kalır. List metodunun sonuna eklediğimiz .FirstOrDefault() metodu entity framework de bir listedeki ilk kaydı bulup getirir böylece giriş yapan kullanıcıya ulaşmış oluruz
            if (kullanici == null) //eğer kullanıcı null sa yani bulunamadıysa
            {
                lblMesaj.Text = "Böyle Bir Kullanıcı Bulunamadı!";//mesaj label ına hata mesajını yazdır
            }
            else//kullanıcı varsa
            {
                Session["admin"] = kullanici;//Session["admin"] e bulunan kullanıcıyı yükle
                Response.Redirect("Default.aspx");//sayfayı Default.aspx e yönlendir
            }
            //lblMesaj.Text = "Hoşgeldin " + txtKullaniciAdi.Text;
            
        }
    }
}