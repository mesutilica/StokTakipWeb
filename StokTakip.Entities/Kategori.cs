using System;

namespace StokTakip.Entities
{
    public class Kategori : IEntity
    {
        public int Id { get; set; }
        public string KategoriAdi { get; set; }
        public string KategoriAciklamasi { get; set; }
        public DateTime EklenmeTarihi { get; set; }
        public bool Aktif { get; set; }
    }
}
