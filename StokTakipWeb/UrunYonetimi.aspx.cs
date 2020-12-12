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
    public partial class UrunYonetimi : Page
    {
        UrunManager um = new UrunManager();
        KategoriManager km = new KategoriManager();
        MarkaManager mm = new MarkaManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)//sayfada butona tıklanmamışsa
            {
                ddlUrunKategorisi.DataSource = km.GetAll();
                ddlUrunKategorisi.DataBind();
                ddlUrunMarkasi.DataSource = mm.GetAll();
                ddlUrunMarkasi.DataBind();
            }
        }

        protected void btnKaydet_Click(object sender, EventArgs e)
        {
            try
            {
                um.Add(
                       new Urun
                       {
                           Aktif = cbAktif.Checked,
                           EklenmeTarihi = DateTime.Now,
                           KategoriId = Convert.ToInt32(ddlUrunKategorisi.SelectedValue),
                           MarkaId = Convert.ToInt32(ddlUrunMarkasi.SelectedValue),
                           Kdv = Convert.ToInt32(txtKdv.Text),
                           StokMiktari = Convert.ToInt32(txtStokMiktari.Text),
                           UrunAciklamasi = txtUrunAciklamasi.Text,
                           UrunAdi = txtUrunAdi.Text,
                           UrunFiyati = Convert.ToDecimal(txtKdv.Text)
                       }
                      );
                Response.Redirect("UrunYonetimi.aspx");
            }
            catch (Exception)
            {
                Response.Write("Hata Oluştu!");
            }
        }
    }
}