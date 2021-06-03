using Data;
using Entities;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace StokTakip.NetCoreMvcWebUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class LoginController : Controller
    {
        private readonly DatabaseContext _context;
        public LoginController(DatabaseContext context)
        {
            _context = context;
        }
        public IActionResult Index()
        {
            return View();
        }
        [HttpPost]
        public async Task<IActionResult> IndexAsync(Kullanici kullanici)
        {
            var admin = await _context.Kullanici
                   .FirstOrDefaultAsync(m => m.Email == kullanici.Email && m.KullaniciSifre == kullanici.KullaniciSifre && m.Aktif == true);
            if (admin != null) //eğer kullanıcı null sa yani bulunamadıysa
            {
                //Session kullanmak için nuget dan Microsoft.AspNetCore.Session paketini yüklüyoruz
                //Startup a services.AddSession(); ve app.UseSession(); ı ekliyoruz
                HttpContext.Session.SetString("admin", admin.KullaniciAdi); // Yeni bir session oluşturma.
                
                return Redirect("/Admin");//Sayfayı admin girişine yönlendir
            }
            ModelState.AddModelError("", "Böyle Bir Kullanıcı Bulunamadı!");

            return View(kullanici);
        }
        public IActionResult Logout()
        {
            //HttpContext.Session.GetString("admin"); // Sessiondan değer getirme.
            HttpContext.Session.Clear(); // Tüm sessionları temizleme.
            return Redirect("/Admin/Login");
        }
    }
}
