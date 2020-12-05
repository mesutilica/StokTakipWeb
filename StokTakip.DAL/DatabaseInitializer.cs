using StokTakip.Entities;
using System.Data.Entity;
using System.Linq;

namespace StokTakip.DAL
{
    public class DatabaseInitializer : CreateDatabaseIfNotExists<DatabaseContext>
    //CreateDatabaseIfNotExists<DatabaseContext> bu kod veritabanı yoksa bizim yazdığımız DatabaseContext sınıfı içerisindeki dbset lere bakarak ilgili tabloları veritabanında oluşturmayı sağlar
    {
        protected override void Seed(DatabaseContext context)//Seed metodu parametre olarak aldığı DatabaseContext context elemanınını kullanarak veritabanı oluştuktan sonra işlem yapmamızı sağlar
        {
            if (context.Kullanici.FirstOrDefault() == null)//entity framework linq kullanarak context.Kullanici.FirstOrDefault() koduyla veritabanındaki kullanıcı tablosunda her hangi bir kayıt var mı diye kontrol ettik eğer kayıt yoksa aşağıdaki kullanıcıyı veritabanına ekleyecek
            {
                context.Kullanici.Add(new Kullanici()
                {
                    Adi = "Admin",
                    Aktif = true,
                    Email = "admin@stoktakipweb.com",
                    KullaniciAdi = "admin",
                    KullaniciSifre = "123456"
                }
                );
                context.SaveChanges();//veritabanındaki değişiklikleri(yani kullanıcı ekleme işlemini) kaydet
            }
            base.Seed(context);
        }
    }
}
