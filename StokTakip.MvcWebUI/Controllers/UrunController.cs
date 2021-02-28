using StokTakip.BL;
using System.Linq;
using System.Net;
using System.Web.Mvc;

namespace StokTakip.MvcWebUI.Controllers
{
    public class UrunController : Controller
    {
        private UrunManager db = new UrunManager();
        // GET: Urun
        public ActionResult Index(int? id)
        {
            var urunler = db.GetAll();//urunler isminde bir değişken oluşturduk ve veritabanından çektiğimiz tüm ürünleri bu değişkene atadık
            if (id != null)//Eğer adres çubuğundan bir kategori id si gelirse
            {
                urunler = urunler.Where(u=>u.KategoriId == id).ToList();//Linq kullanarak ürün listesini adres çubuğundan gelen kategori id sine ait ürünler kalacak şekilde filtrele. Not : where kullanarak filtreleme yaparsak işlem sonunda tolist ile listeleme yapmamız gerekir!
            }
            return View(urunler);//Index sayfasına ürün listesini gönder
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