using StokTakip.BL;
using System;

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
                markaManager.Add(new StokTakip.Entities.Marka
                {
                    Aktif = cbAktif.Checked,
                    EklenmeTarihi = DateTime.Now,
                    MarkaAciklamasi = txtMarkaAciklamasi.Text,
                    MarkaAdi = txtMarkaAdi.Text
                });
                Response.Redirect("MarkaYonetimi.aspx");
            }
            catch (Exception)
            {
                lblMesaj.Text = "Hata Oluştu";
            }
        }
    }
}