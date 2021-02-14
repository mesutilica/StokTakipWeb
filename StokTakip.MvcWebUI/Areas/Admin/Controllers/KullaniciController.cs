using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StokTakip.Entities;
using StokTakip.BL;

namespace StokTakip.MvcWebUI.Areas.Admin.Controllers
{
    public class KullaniciController : Controller
    {
        //private StokTakipMvcWebUIContext db = new StokTakipMvcWebUIContext();
        KullaniciManager db = new KullaniciManager();
        // GET: Admin/Kullanici
        public ActionResult Index()
        {
            return View(db.GetAll());
        }

        // GET: Admin/Kullanici/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kullanici kullanici = db.Get(id.Value);
            if (kullanici == null)
            {
                return HttpNotFound();
            }
            return View(kullanici);
        }

        // GET: Admin/Kullanici/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Kullanici/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,KullaniciAdi,KullaniciSifre,Email,Adi,Soyadi,Aktif")] Kullanici kullanici)
        {
            if (ModelState.IsValid)
            {
                db.Add(kullanici);
                
                return RedirectToAction("Index");
            }

            return View(kullanici);
        }

        // GET: Admin/Kullanici/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kullanici kullanici = db.Get(id.Value);
            if (kullanici == null)
            {
                return HttpNotFound();
            }
            return View(kullanici);
        }

        // POST: Admin/Kullanici/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,KullaniciAdi,KullaniciSifre,Email,Adi,Soyadi,Aktif")] Kullanici kullanici)
        {
            if (ModelState.IsValid)
            {
                
                db.Update(kullanici);
                return RedirectToAction("Index");
            }
            return View(kullanici);
        }

        // GET: Admin/Kullanici/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kullanici kullanici = db.Get(id.Value);
            if (kullanici == null)
            {
                return HttpNotFound();
            }
            return View(kullanici);
        }

        // POST: Admin/Kullanici/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Kullanici kullanici = db.Get(id);
            db.Delete(kullanici.Id);
            
            return RedirectToAction("Index");
        }
                
    }
}
