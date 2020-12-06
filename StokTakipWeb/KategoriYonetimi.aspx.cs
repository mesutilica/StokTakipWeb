using StokTakip.BL;
using StokTakip.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakipWeb
{
    public partial class KategoriYonetimi : System.Web.UI.Page
    {
        KategoriManager km = new KategoriManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            //web formda sayfa yüklenirken çalışan metot 
        }

        protected void btnEkle_Click(object sender, EventArgs e)
        {
            //sayfa ön yüzündeki btnekle butonuna tıklandığında çalışan method
            try
            {
                km.Add(
                new Kategori()
                {
                    Aktif = cbAktif.Checked,
                    EklenmeTarihi = DateTime.Now,
                    KategoriAdi = txtKategoriAdi.Text,
                    KategoriAciklamasi = txtKategoriAciklamasi.Text
                }
                );
                Response.Redirect("KategoriYonetimi.aspx");//yukarıdaki kategori ekleme işlemi başarılı ise sayfayı KategoriYonetimi.aspx e yönlendir
            }
            catch (Exception)
            {
                lblSonuc.Text = "Hata Oluştu!";
            }            
        }
    }
}