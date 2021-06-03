using Microsoft.EntityFrameworkCore;
using Entities;

namespace Data
{
    public class DatabaseContext : DbContext
    {
        public DbSet<Urun> Urun { get; set; }
        public DbSet<Kategori> Kategori { get; set; }
        public DbSet<Kullanici> Kullanici { get; set; }
        public DbSet<Marka> Marka { get; set; }
        public DbSet<Siparis> Siparis { get; set; }
        /*protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
        }*/
        public DatabaseContext(DbContextOptions<DatabaseContext> options) : base(options)
        {

        }
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            optionsBuilder.UseSqlServer(@"Server=(localdb)\mssqllocaldb;Database=StokTakipWeb;Trusted_Connection=True;MultipleActiveResultSets=true");
        }
    }
}
