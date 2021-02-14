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
using System.IO;

namespace StokTakip.MvcWebUI.Areas.Admin.Controllers
{
    public class MarkaController : Controller
    {
        //private StokTakipMvcWebUIContext db = new StokTakipMvcWebUIContext();
        MarkaManager db = new MarkaManager();
        // GET: Admin/Marka
        public ActionResult Index()
        {
            return View(db.GetAll());
        }

        // GET: Admin/Marka/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Marka marka = db.Get(id.Value);
            if (marka == null)
            {
                return HttpNotFound();
            }
            return View(marka);
        }

        // GET: Admin/Marka/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Marka/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,MarkaAdi,MarkaAciklamasi,EklenmeTarihi,Aktif,MarkaLogo")] Marka marka, HttpPostedFileBase MarkaLogo)
        {
            if (ModelState.IsValid)
            {
                string directory = Server.MapPath("~/Img/Marka/");
                if (MarkaLogo != null)
                {
                    var fileName = Path.GetFileName(MarkaLogo.FileName);
                    MarkaLogo.SaveAs(Path.Combine(directory, fileName));
                    marka.MarkaLogo = MarkaLogo.FileName;
                }
                marka.EklenmeTarihi = DateTime.Now;
                db.Add(marka);
                return RedirectToAction("Index");
            }

            return View(marka);
        }

        // GET: Admin/Marka/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Marka marka = db.Get(id.Value);
            if (marka == null)
            {
                return HttpNotFound();
            }
            return View(marka);
        }

        // POST: Admin/Marka/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,MarkaAdi,MarkaAciklamasi,EklenmeTarihi,Aktif,MarkaLogo")] Marka marka)
        {
            if (ModelState.IsValid)
            {
                
                db.Update(marka);
                return RedirectToAction("Index");
            }
            return View(marka);
        }

        // GET: Admin/Marka/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Marka marka = db.Get(id.Value);
            if (marka == null)
            {
                return HttpNotFound();
            }
            return View(marka);
        }

        // POST: Admin/Marka/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Marka marka = db.Get(id);
            db.Delete(marka.Id);
            
            return RedirectToAction("Index");
        }

    }
}
