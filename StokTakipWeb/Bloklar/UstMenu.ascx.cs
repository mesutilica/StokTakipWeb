using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakipWeb.Bloklar
{
    public partial class UstMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LbCikis_Click(object sender, EventArgs e)
        {
            Session["admin"] = null; //session admin nesnesini boşalt ve çıkış yap

            Response.Redirect("/Admin/Giris.aspx", true);//Sayfayı admin giriş sayfasına yönlendir
        }
    }
}