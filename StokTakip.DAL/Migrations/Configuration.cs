using StokTakip.Entities;
using System.Data.Entity.Migrations;
using System.Linq;

namespace StokTakip.DAL.Migrations
{
    internal sealed class Configuration : DbMigrationsConfiguration<DatabaseContext>
    {
        public Configuration()
        {
            AutomaticMigrationsEnabled = true;
            AutomaticMigrationDataLossAllowed = true;
        }

        protected override void Seed(DatabaseContext context)
        {
            if (context.Kullanicilar.FirstOrDefault() == null)//entity framework linq kullanarak context.Kullanici.FirstOrDefault() koduyla veritabanındaki kullanıcı tablosunda her hangi bir kayıt var mı diye kontrol ettik eğer kayıt yoksa aşağıdaki kullanıcıyı veritabanına ekleyecek
            {
                context.Kullanicilar.Add(new Kullanici()
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
