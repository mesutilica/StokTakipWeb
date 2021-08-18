using System;

namespace StokTakipWeb.Bloklar
{
    public partial class UstMenu : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LbCikis_Click(object sender, EventArgs e)
        {
            //Session["admin"] = null; //session admin nesnesini boşalt ve çıkış yap
            //Session.Remove("admin");
            System.Web.Security.FormsAuthentication.SignOut();
            Response.Redirect("/Admin/Giris.aspx", true);//Sayfayı admin giriş sayfasına yönlendir
        }
    }
}