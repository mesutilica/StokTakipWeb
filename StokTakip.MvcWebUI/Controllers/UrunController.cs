using StokTakip.BL;
using System.Net;
using System.Web.Mvc;

namespace StokTakip.MvcWebUI.Controllers
{
    public class UrunController : Controller
    {
        private UrunManager db = new UrunManager();
        // GET: Urun
        public ActionResult Index()
        {
            return View(db.GetAll());
        }
        public ActionResult Detay(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            var urun = db.Get(id.Value);
            if (urun == null)
            {
                return HttpNotFound();
            }
            return View(urun);
        }
    }
}