using System;

namespace StokTakipWeb
{
    public partial class SiteSablon : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session nesnesi c# ta oturum bilgilerini tutmamızı sağlar
            if (Session["admin"] == null) //Eğer session boşsa, yani üye giriş yapmamışsa veya session patlamışsa
            {
                //Response.Redirect("/Admin/Giris.aspx");//Sayfayı admin giriş sayfasına yönlendir
            }
        }
    }
}