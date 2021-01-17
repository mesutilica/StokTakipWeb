using System;

namespace StokTakip.Entities
{
    public class Marka : IEntity
    {
        public int Id { get; set; }
        public string MarkaAdi { get; set; }
        public string MarkaAciklamasi { get; set; }
        public DateTime EklenmeTarihi { get; set; }
        public bool Aktif { get; set; }
        public string MarkaLogo { get; set; }
    }
}
