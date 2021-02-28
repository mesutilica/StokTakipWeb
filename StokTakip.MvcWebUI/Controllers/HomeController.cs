using StokTakip.BL;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StokTakip.MvcWebUI.Controllers
{
    public class HomeController : Controller
    {
        private UrunManager db = new UrunManager();
        private KategoriManager kategoriManager = new KategoriManager();
        public ActionResult Index()
        {
            return View(db.List(u => u.Aktif == true && u.Anasayfa == true));//sayfa ön yüzü olan viewa urun manager(db) aracılığıyla veritabanından çektiğimiz ürün listesini gönder
        }

        public PartialViewResult _UstKategoriler()
        {
            return PartialView(kategoriManager.GetAll());
        }

        public ActionResult About()
        {
            ViewBag.Message = "Hakkımızda sayfası.";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "İletişim sayfası.";

            return View();
        }
    }
}