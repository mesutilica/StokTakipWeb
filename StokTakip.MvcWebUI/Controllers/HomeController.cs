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
        public ActionResult Index()
        {
            return View(db.GetAll());//sayfa ön yüzü olan viewa urun manager(db) aracılığıyla veritabanından çektiğimiz ürün listesini gönder
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