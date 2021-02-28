using System;
using System.Data.Entity;
using System.IO;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using StokTakip.BL;
using StokTakip.Entities;

namespace StokTakip.MvcWebUI.Areas.Admin.Controllers
{
    public class UrunController : Controller
    {
        private UrunManager db = new UrunManager();
        private KategoriManager kategoriManager = new KategoriManager();
        private MarkaManager marka = new MarkaManager();
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
            ViewBag.KategoriId = new SelectList(kategoriManager.GetAll(), "Id", "KategoriAdi");
            ViewBag.MarkaId = new SelectList(marka.GetAll(), "Id", "MarkaAdi");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(Urun urun, HttpPostedFileBase Resim)
        {
            if (ModelState.IsValid)
            {
                string directory = Server.MapPath("~/Img/Urunler/");
                if (Resim != null)
                {
                    var fileName = Path.GetFileName(Resim.FileName);
                    Resim.SaveAs(Path.Combine(directory, fileName));
                    urun.Resim = Resim.FileName;
                }
                urun.EklenmeTarihi = DateTime.Now;
                db.Add(urun);
                return RedirectToAction("Index");
            }
            ViewBag.KategoriId = new SelectList(kategoriManager.GetAll(), "Id", "KategoriAdi");
            ViewBag.MarkaId = new SelectList(marka.GetAll(), "Id", "MarkaAdi");
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
            ViewBag.KategoriId = new SelectList(kategoriManager.GetAll(), "Id", "KategoriAdi", urun.KategoriId);
            ViewBag.MarkaId = new SelectList(marka.GetAll(), "Id", "MarkaAdi", urun.MarkaId);
            return View(urun);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(Urun urun, HttpPostedFileBase Resim, string resmiSil)
        {
            if (ModelState.IsValid)
            {
                string directory = Server.MapPath("~/Img/Urunler/");
                if (Resim != null)
                {
                    var fileName = Path.GetFileName(Resim.FileName);
                    Resim.SaveAs(Path.Combine(directory, fileName));
                    urun.Resim = Resim.FileName;
                }
                if (resmiSil == "on")
                {
                    urun.Resim = null;
                }
                db.Update(urun);
                return RedirectToAction("Index");
            }
            ViewBag.KategoriId = new SelectList(kategoriManager.GetAll(), "Id", "KategoriAdi", urun.KategoriId);
            ViewBag.MarkaId = new SelectList(marka.GetAll(), "Id", "MarkaAdi", urun.MarkaId);
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
