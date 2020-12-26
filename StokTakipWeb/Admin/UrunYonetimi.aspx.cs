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
                var urun = new Urun
                {
                    Aktif = cbAktif.Checked,
                    EklenmeTarihi = DateTime.Now,
                    KategoriId = Convert.ToInt32(ddlUrunKategorisi.SelectedValue),
                    MarkaId = Convert.ToInt32(ddlUrunMarkasi.SelectedValue),
                    Kdv = Convert.ToInt32(txtKdv.Text),
                    StokMiktari = Convert.ToInt32(txtStokMiktari.Text),
                    UrunAciklamasi = txtUrunAciklamasi.Text,
                    UrunAdi = txtUrunAdi.Text,
                    UrunFiyati = Convert.ToDecimal(txtUrunFiyati.Text)
                };
                if (fuResim.HasFile)//Eğer resim yükleme elemanından bir resim seçilmişse
                {
                    fuResim.SaveAs(Server.MapPath("~/Uploads/" + fuResim.FileName));//furesimden seçilen resmi sunucudaki uploads klasörüne kaydet
                    urun.Resim = fuResim.FileName;
                }
                if (string.IsNullOrWhiteSpace(lblId.Text)) um.Add(urun);
                else 
                {
                    urun.Id = int.Parse(lblId.Text);
                    um.Update(urun);
                }
                Response.Redirect("UrunYonetimi.aspx");
            }
            catch (Exception)
            {
                Response.Write("Hata Oluştu!");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            try
            {
                var satir = GridView1.SelectedRow;
                ddlUrunKategorisi.SelectedValue = satir.Cells[2].Text;
                ddlUrunMarkasi.SelectedValue = satir.Cells[3].Text;
                txtUrunAdi.Text = HttpUtility.HtmlDecode(satir.Cells[4].Text);
                txtUrunAciklamasi.Text = HttpUtility.HtmlDecode(satir.Cells[5].Text);
                txtUrunFiyati.Text = satir.Cells[7].Text;
                txtKdv.Text = satir.Cells[8].Text;
                txtStokMiktari.Text = satir.Cells[9].Text;
                lblId.Text = satir.Cells[1].Text;
                ImgResim.ImageUrl = "~/Uploads/" + satir.Cells[12].Text;
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