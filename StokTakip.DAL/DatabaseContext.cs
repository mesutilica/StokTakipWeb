using StokTakip.Entities;
using System.Data.Entity;
using System.Data.Entity.ModelConfiguration.Conventions;

namespace StokTakip.DAL
{
    public class DatabaseContext : DbContext
    {
        public DbSet<Urun> Urunler { get; set; }
        public DbSet<Kategori> Kategoriler { get; set; }
        public DbSet<Kullanici> Kullanicilar { get; set; }
        public DbSet<Marka> Markalar { get; set; }
        public DbSet<Siparis> Siparisler { get; set; }
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Conventions.Remove<PluralizingTableNameConvention>();//veritabanı tablolarındaki s takısını kaldırmak için
            base.OnModelCreating(modelBuilder);
        }
        public DatabaseContext()
        {
            Database.SetInitializer(new DatabaseInitializer());
        }
    }
}
