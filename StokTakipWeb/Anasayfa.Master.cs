using StokTakip.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakipWeb
{
    public partial class Anasayfa : System.Web.UI.MasterPage
    {
        KategoriManager kategori = new KategoriManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            KategorileriYukle();
        }

        void KategorileriYukle()
        {
            var kategoriListesi = kategori.List(k => k.Aktif == true);//List metoduyla veritabanından çekilen verilere filtreleme işlemi yaparak aktif özelliği true olanları getirtiyoruz. //GetAll Kategorileri veritabanından çekip bir listeye yükledik
            foreach (var item in kategoriListesi)
            {
                LtKategoriler.Text += $"<li><a href='/Kategoriler.aspx?kid={item.Id}'>{item.KategoriAdi}</a></li>";//veritabanından çekilen kategorileri ön yüze eklediğimiz ltkategoriler literal kontrolüne ekledik 
            }
        }

    }
}