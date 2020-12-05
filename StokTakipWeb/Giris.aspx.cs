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
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnGiris_Click(object sender, EventArgs e)
        {
            //lblMesaj.Text = "Hoşgeldin " + txtKullaniciAdi.Text;
            Response.Redirect("Default.aspx");//sayfayı Default.aspx e yönlendir
        }
    }
}