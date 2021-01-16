using StokTakip.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakipWeb
{
    public partial class Kategoriler : System.Web.UI.Page
    {
        KategoriManager km = new KategoriManager();
        UrunManager um = new UrunManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            UrunleriYukle();
        }

        void UrunleriYukle()
        {
            try
            {
                if (Request.QueryString["kid"] != null)
                {
                    var id = int.Parse(Request.QueryString["kid"]);//Request.QueryString ile adres çubuğundan gelen parametreleri yakalayabiliyoruz. Menüden kid ismiyle gönderilen ve içerisinde kategorinin ıd değerini taşıyan parametreyi bu yöntemle elde ederiz
                    rptAnasayfaUrunleri.DataSource = um.List(u => u.Id == id);//Ürünleri göstereceğimiz repeater a list metodumuzu sorgusuyla beraber yollluyoruz. Brada list metoduna yolladığımız u => u.Id == kategoriId ifadesi list metodundaki where şartını sağlıyor veritabanındaki ürünlerden kategori ıd si QueryString den gelen ıd değerine eşit olanları getirmemizi sağlar
                    var katbaslik = km.Get(id);
                    LtKategoriBaslik.Text = katbaslik.KategoriAdi;
                }
                else
                {
                    rptAnasayfaUrunleri.DataSource = um.GetAll();
                }
                
                rptAnasayfaUrunleri.DataBind();//bu satır ise veritabanından üst satırda çekilen verinin repeater a yüklenmesini sağlar
            }
            catch (Exception)
            {
                Response.Write("Hata Oluştu! Ürünler Yüklenemedi!");
            }
        }

    }
}