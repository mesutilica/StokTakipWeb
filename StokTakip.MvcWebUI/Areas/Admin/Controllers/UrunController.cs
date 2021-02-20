using System;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using StokTakip.BL;
using StokTakip.Entities;

namespace StokTakip.MvcWebUI.Areas.Admin.Controllers
{
    public class UrunController : Controller
    {
        private UrunManager db = new UrunManager();

        // GET: Admin/Urun
        public ActionResult Index()
        {
            return View(db.GetAll());
        }

        // GET: Admin/Urun/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Urun urun = db.Get(id.Value);
            if (urun == null)
            {
                return HttpNotFound();
            }
            return View(urun);
        }

        // GET: Admin/Urun/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Urun/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,KategoriId,MarkaId,UrunAdi,UrunAciklamasi,EklenmeTarihi,UrunFiyati,Kdv,StokMiktari,Aktif,Resim")] Urun urun)
        {
            if (ModelState.IsValid)
            {
                urun.EklenmeTarihi = DateTime.Now;
                db.Add(urun);
                return RedirectToAction("Index");
            }

            return View(urun);
        }

        // GET: Admin/Urun/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Urun urun = db.Get(id.Value);
            if (urun == null)
            {
                return HttpNotFound();
            }
            return View(urun);
        }

        // POST: Admin/Urun/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,KategoriId,MarkaId,UrunAdi,UrunAciklamasi,EklenmeTarihi,UrunFiyati,Kdv,StokMiktari,Aktif,Resim")] Urun urun)
        {
            if (ModelState.IsValid)
            {
                db.Update(urun);
                return RedirectToAction("Index");
            }
            return View(urun);
        }

        // GET: Admin/Urun/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Urun urun = db.Get(id.Value);
            if (urun == null)
            {
                return HttpNotFound();
            }
            return View(urun);
        }

        // POST: Admin/Urun/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Urun urun = db.Get(id);
            db.Delete(urun.Id);
            return RedirectToAction("Index");
        }

    }
}
