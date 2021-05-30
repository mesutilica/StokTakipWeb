using System;
using Microsoft.EntityFrameworkCore.Migrations;

namespace StokTakip.NetCoreMvcWebUI.Migrations
{
    public partial class InitialCreate : Migration
    {
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.CreateTable(
                name: "Kategori",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    KategoriAdi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    KategoriAciklamasi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EklenmeTarihi = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Aktif = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Kategori", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Kullanici",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    KullaniciAdi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    KullaniciSifre = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Email = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Adi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Soyadi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Aktif = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Kullanici", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Marka",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MarkaAdi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MarkaAciklamasi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EklenmeTarihi = table.Column<DateTime>(type: "datetime2", nullable: false),
                    Aktif = table.Column<bool>(type: "bit", nullable: false),
                    MarkaLogo = table.Column<string>(type: "nvarchar(max)", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Marka", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Siparis",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    MusteriAdi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    MusteriSoyadi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Ulke = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    Adres = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SiparisNo = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UrunId = table.Column<int>(type: "int", nullable: false),
                    SiparisTarihi = table.Column<DateTime>(type: "datetime2", nullable: false),
                    TeslimatTarihi = table.Column<DateTime>(type: "datetime2", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Siparis", x => x.Id);
                });

            migrationBuilder.CreateTable(
                name: "Urun",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    KategoriId = table.Column<int>(type: "int", nullable: false),
                    MarkaId = table.Column<int>(type: "int", nullable: false),
                    UrunAdi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    UrunAciklamasi = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    EklenmeTarihi = table.Column<DateTime>(type: "datetime2", nullable: false),
                    UrunFiyati = table.Column<decimal>(type: "decimal(18,2)", nullable: false),
                    Kdv = table.Column<int>(type: "int", nullable: false),
                    StokMiktari = table.Column<int>(type: "int", nullable: false),
                    Aktif = table.Column<bool>(type: "bit", nullable: false),
                    Anasayfa = table.Column<bool>(type: "bit", nullable: false),
                    Resim = table.Column<string>(type: "nvarchar(max)", nullable: true),
                    SiparisId = table.Column<int>(type: "int", nullable: true)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Urun", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Urun_Kategori_KategoriId",
                        column: x => x.KategoriId,
                        principalTable: "Kategori",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Urun_Marka_MarkaId",
                        column: x => x.MarkaId,
                        principalTable: "Marka",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Urun_Siparis_SiparisId",
                        column: x => x.SiparisId,
                        principalTable: "Siparis",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Restrict);
                });

            migrationBuilder.CreateIndex(
                name: "IX_Urun_KategoriId",
                table: "Urun",
                column: "KategoriId");

            migrationBuilder.CreateIndex(
                name: "IX_Urun_MarkaId",
                table: "Urun",
                column: "MarkaId");

            migrationBuilder.CreateIndex(
                name: "IX_Urun_SiparisId",
                table: "Urun",
                column: "SiparisId");
        }

        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropTable(
                name: "Kullanici");

            migrationBuilder.DropTable(
                name: "Urun");

            migrationBuilder.DropTable(
                name: "Kategori");

            migrationBuilder.DropTable(
                name: "Marka");

            migrationBuilder.DropTable(
                name: "Siparis");
        }
    }
}
