using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web.Mvc;
using StokTakip.BL;
using StokTakip.Entities;

namespace StokTakip.MvcWebUI.Areas.Admin.Controllers
{
    public class KategoriController : Controller
    {
        //private StokTakipMvcWebUIContext db = new StokTakipMvcWebUIContext();
        KategoriManager db = new KategoriManager();
        // GET: Admin/Kategori
        public ActionResult Index()
        {
            return View(db.GetAll());
        }

        // GET: Admin/Kategoris/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kategori kategori = db.Get(id.Value);
            if (kategori == null)
            {
                return HttpNotFound();
            }
            return View(kategori);
        }

        // GET: Admin/Kategoris/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Admin/Kategoris/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,KategoriAdi,KategoriAciklamasi,EklenmeTarihi,Aktif")] Kategori kategori)
        {
            if (ModelState.IsValid)
            {
                db.Add(kategori);
                return RedirectToAction("Index");
            }

            return View(kategori);
        }

        // GET: Admin/Kategoris/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kategori kategori = db.Get(id.Value);
            if (kategori == null)
            {
                return HttpNotFound();
            }
            return View(kategori);
        }

        // POST: Admin/Kategoris/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to, for 
        // more details see https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,KategoriAdi,KategoriAciklamasi,EklenmeTarihi,Aktif")] Kategori kategori)
        {
            if (ModelState.IsValid)
            {
                db.Update(kategori);
                
                return RedirectToAction("Index");
            }
            return View(kategori);
        }

        // GET: Admin/Kategoris/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Kategori kategori = db.Get(id.Value);
            if (kategori == null)
            {
                return HttpNotFound();
            }
            return View(kategori);
        }

        // POST: Admin/Kategoris/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Kategori kategori = db.Get(id);
            db.Delete(kategori.Id);
            
            return RedirectToAction("Index");
        }

        
    }
}
