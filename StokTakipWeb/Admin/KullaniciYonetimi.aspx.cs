using StokTakip.BL;
using System;
using StokTakip.Entities;

namespace StokTakipWeb
{
    public partial class KullaniciYonetimi : System.Web.UI.Page
    {
        KullaniciManager kullaniciManager = new KullaniciManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            try
            {
                kullaniciManager.Add(
                new Kullanici
                {
                    Adi = txtAdi.Text,
                    Soyadi = txtSoyadi.Text,
                    Aktif = cbAktif.Checked,
                    Email = txtEmail.Text,
                    KullaniciAdi = txtKullaniciAdi.Text,
                    KullaniciSifre = txtSifre.Text
                }
                );
                Response.Redirect("KullaniciYonetimi.aspx");
            }
            catch (Exception)
            {
                Response.Write("Hata Oluştu!");
            }            
        }
    }
}