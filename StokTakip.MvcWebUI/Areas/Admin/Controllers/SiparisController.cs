using System.Net;
using System.Web.Mvc;
using StokTakip.BL;
using StokTakip.Entities;

namespace StokTakip.MvcWebUI.Areas.Admin.Controllers
{
    public class SiparisController : Controller
    {
        private SiparisManager db = new SiparisManager();
        private UrunManager urun = new UrunManager();
        // GET: Admin/Siparis
        public ActionResult Index()
        {
            return View(db.GetAll());
        }

        // GET: Admin/Siparis/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Siparis siparis = db.Get(id.Value);
            if (siparis == null)
            {
                return HttpNotFound();
            }
            return View(siparis);
        }

        // GET: Admin/Siparis/Create
        public ActionResult Create()
        {
            ViewBag.UrunId = new SelectList(urun.GetAll(), "Id", "UrunAdi");
            return View();
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "Id,MusteriAdi,MusteriSoyadi,Ulke,Adres,SiparisNo,UrunId,SiparisTarihi,TeslimatTarihi")] Siparis siparis)
        {
            if (ModelState.IsValid)
            {
                db.Add(siparis);
                return RedirectToAction("Index");
            }
            ViewBag.UrunId = new SelectList(urun.GetAll(), "Id", "UrunAdi");
            return View(siparis);
        }

        // GET: Admin/Siparis/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Siparis siparis = db.Get(id.Value);
            if (siparis == null)
            {
                return HttpNotFound();
            }
            ViewBag.UrunId = new SelectList(urun.GetAll(), "Id", "UrunAdi", siparis.UrunId);
            return View(siparis);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "Id,MusteriAdi,MusteriSoyadi,Ulke,Adres,SiparisNo,UrunId,SiparisTarihi,TeslimatTarihi")] Siparis siparis)
        {
            if (ModelState.IsValid)
            {
                db.Update(siparis);
                return RedirectToAction("Index");
            }
            ViewBag.UrunId = new SelectList(urun.GetAll(), "Id", "UrunAdi", siparis.UrunId);
            return View(siparis);
        }

        // GET: Admin/Siparis/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Siparis siparis = db.Get(id.Value);
            if (siparis == null)
            {
                return HttpNotFound();
            }
            return View(siparis);
        }

        // POST: Admin/Siparis/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Siparis siparis = db.Get(id);
            db.Delete(siparis.Id);
            return RedirectToAction("Index");
        }

    }
}
