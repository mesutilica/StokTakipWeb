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
    public partial class SiparisYonetimi : System.Web.UI.Page
    {
        SiparisManager sm = new SiparisManager();
        UrunManager um = new UrunManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ddlUrun.DataSource = um.GetAll();//ürünleri çek ve ddlurun e yükle
                ddlUrun.DataBind();//yüklemeyi tamamla
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            try
            {
                sm.Add(new Siparis {
                    Adres = txtAdres.Text,
                    MusteriAdi = txtMusteriAdi.Text,
                    MusteriSoyadi = txtMusteriSoyadi.Text,
                    SiparisNo = txtSiparisNo.Text,
                    Ulke = txtUlke.Text,
                    UrunId = Convert.ToInt32(ddlUrun.SelectedValue),
                    SiparisTarihi = clSiparisTarihi.SelectedDate,
                    TeslimatTarihi = clTeslimatTarihi.SelectedDate
                });
                Response.Redirect("SiparisYonetimi.aspx");
            }
            catch (Exception)
            {
                lblMesaj.Text = "Hata Oluştu!";
            }
        }
    }
}