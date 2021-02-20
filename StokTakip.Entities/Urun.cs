using System;

namespace StokTakip.Entities
{
    public class Urun : IEntity
    {
        public int Id { get; set; }
        public int KategoriId { get; set; }
        public int MarkaId { get; set; }
        public string UrunAdi { get; set; }
        public string UrunAciklamasi { get; set; }
        public DateTime EklenmeTarihi { get; set; }
        public decimal UrunFiyati { get; set; }
        public int Kdv { get; set; }
        public int StokMiktari { get; set; }
        public bool Aktif { get; set; }
        public string Resim { get; set; }
        public virtual Kategori Kategori { get; set; }//urun sınıfı ile kategori sınıfı arasında bire bir ilişki kurduk
        public virtual Marka Marka { get; set; }
    }
}