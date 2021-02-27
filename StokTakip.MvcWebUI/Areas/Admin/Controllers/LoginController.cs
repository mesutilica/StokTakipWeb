using StokTakip.BL;
using StokTakip.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace StokTakip.MvcWebUI.Areas.Admin.Controllers
{
    public class LoginController : Controller
    {
        KullaniciManager kullaniciManager = new KullaniciManager();
        // GET: Admin/Login
        public ActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public ActionResult Index(Kullanici kullanici)
        {
            var admin = kullaniciManager.Get(k => k.Email == kullanici.Email && k.KullaniciSifre == kullanici.KullaniciSifre && k.Aktif == true);
            if (admin != null) //eğer kullanıcı null sa yani bulunamadıysa
            {
                Session["admin"] = admin;//Session["admin"] e bulunan kullanıcıyı yükle
                return Redirect("/Admin");//Sayfayı admin girişine yönlendir
            }
            ModelState.AddModelError("", "Böyle Bir Kullanıcı Bulunamadı!");
            return View(kullanici);
        }
    }
}