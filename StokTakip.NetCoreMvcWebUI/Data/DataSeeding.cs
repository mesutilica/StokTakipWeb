using Entities;
using Microsoft.AspNetCore.Builder;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.DependencyInjection;
using System.Linq;

namespace Data
{
    public static class DataSeeding
    {
        public static void Seed(IApplicationBuilder app)
        {
            var scope = app.ApplicationServices.CreateScope();
            var context = scope.ServiceProvider.GetService<DatabaseContext>();

            context.Database.Migrate(); // dotnet ef database update

            if (context.Database.GetPendingMigrations().Count() == 0)
            {
                if (context.Kullanici.Count() == 0)
                {
                    Kullanici user = new Kullanici()
                    {
                        Adi = "Admin",
                        Aktif = true,
                        Email = "admin@stoktakipweb.com",
                        KullaniciAdi = "admin",
                        KullaniciSifre = "123456"
                    };
                    context.Kullanici.Add(user);
                }
                context.SaveChanges();//Buradan sonra startup.cs ye bu class ı ekle
            }
        }
    }
}
