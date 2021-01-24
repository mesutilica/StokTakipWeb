using StokTakip.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace StokTakipWeb
{
    public partial class Default1 : System.Web.UI.Page
    {
        UrunManager um = new UrunManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            rptAnasayfaUrunleri.DataSource = um.List(u => u.Aktif == true);//Ürünlerden aktif özelliği true olanları getir
            rptAnasayfaUrunleri.DataBind();
        }
    }
}