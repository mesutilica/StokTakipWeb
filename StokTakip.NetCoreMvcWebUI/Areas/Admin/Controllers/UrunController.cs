using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Data;
using Entities;

namespace StokTakip.NetCoreMvcWebUI.Areas.Admin.Controllers
{
    [Area("Admin")]
    public class UrunController : Controller
    {
        private readonly DatabaseContext _context;

        public UrunController(DatabaseContext context)
        {
            _context = context;
        }

        // GET: Admin/Urun
        public async Task<IActionResult> Index()
        {
            var databaseContext = _context.Urun.Include(u => u.Kategori).Include(u => u.Marka);
            return View(await databaseContext.ToListAsync());
        }

        // GET: Admin/Urun/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var urun = await _context.Urun
                .Include(u => u.Kategori)
                .Include(u => u.Marka)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (urun == null)
            {
                return NotFound();
            }

            return View(urun);
        }

        // GET: Admin/Urun/Create
        public IActionResult Create()
        {
            ViewData["KategoriId"] = new SelectList(_context.Kategori, "Id", "Id");
            ViewData["MarkaId"] = new SelectList(_context.Marka, "Id", "Id");
            return View();
        }

        // POST: Admin/Urun/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,KategoriId,MarkaId,UrunAdi,UrunAciklamasi,EklenmeTarihi,UrunFiyati,Kdv,StokMiktari,Aktif,Anasayfa,Resim")] Urun urun)
        {
            if (ModelState.IsValid)
            {
                _context.Add(urun);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            ViewData["KategoriId"] = new SelectList(_context.Kategori, "Id", "Id", urun.KategoriId);
            ViewData["MarkaId"] = new SelectList(_context.Marka, "Id", "Id", urun.MarkaId);
            return View(urun);
        }

        // GET: Admin/Urun/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var urun = await _context.Urun.FindAsync(id);
            if (urun == null)
            {
                return NotFound();
            }
            ViewData["KategoriId"] = new SelectList(_context.Kategori, "Id", "Id", urun.KategoriId);
            ViewData["MarkaId"] = new SelectList(_context.Marka, "Id", "Id", urun.MarkaId);
            return View(urun);
        }

        // POST: Admin/Urun/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,KategoriId,MarkaId,UrunAdi,UrunAciklamasi,EklenmeTarihi,UrunFiyati,Kdv,StokMiktari,Aktif,Anasayfa,Resim")] Urun urun)
        {
            if (id != urun.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(urun);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!UrunExists(urun.Id))
                    {
                        return NotFound();
                    }
                    else
                    {
                        throw;
                    }
                }
                return RedirectToAction(nameof(Index));
            }
            ViewData["KategoriId"] = new SelectList(_context.Kategori, "Id", "Id", urun.KategoriId);
            ViewData["MarkaId"] = new SelectList(_context.Marka, "Id", "Id", urun.MarkaId);
            return View(urun);
        }

        // GET: Admin/Urun/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var urun = await _context.Urun
                .Include(u => u.Kategori)
                .Include(u => u.Marka)
                .FirstOrDefaultAsync(m => m.Id == id);
            if (urun == null)
            {
                return NotFound();
            }

            return View(urun);
        }

        // POST: Admin/Urun/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var urun = await _context.Urun.FindAsync(id);
            _context.Urun.Remove(urun);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool UrunExists(int id)
        {
            return _context.Urun.Any(e => e.Id == id);
        }
    }
}
