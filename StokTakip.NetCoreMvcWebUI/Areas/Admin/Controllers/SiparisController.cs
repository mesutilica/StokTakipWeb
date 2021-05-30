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
    public class SiparisController : Controller
    {
        private readonly DatabaseContext _context;

        public SiparisController(DatabaseContext context)
        {
            _context = context;
        }

        // GET: Admin/Siparis
        public async Task<IActionResult> Index()
        {
            return View(await _context.Siparis.ToListAsync());
        }

        // GET: Admin/Siparis/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var siparis = await _context.Siparis
                .FirstOrDefaultAsync(m => m.Id == id);
            if (siparis == null)
            {
                return NotFound();
            }

            return View(siparis);
        }

        // GET: Admin/Siparis/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/Siparis/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,MusteriAdi,MusteriSoyadi,Ulke,Adres,SiparisNo,UrunId,SiparisTarihi,TeslimatTarihi")] Siparis siparis)
        {
            if (ModelState.IsValid)
            {
                _context.Add(siparis);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(siparis);
        }

        // GET: Admin/Siparis/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var siparis = await _context.Siparis.FindAsync(id);
            if (siparis == null)
            {
                return NotFound();
            }
            return View(siparis);
        }

        // POST: Admin/Siparis/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,MusteriAdi,MusteriSoyadi,Ulke,Adres,SiparisNo,UrunId,SiparisTarihi,TeslimatTarihi")] Siparis siparis)
        {
            if (id != siparis.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(siparis);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!SiparisExists(siparis.Id))
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
            return View(siparis);
        }

        // GET: Admin/Siparis/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var siparis = await _context.Siparis
                .FirstOrDefaultAsync(m => m.Id == id);
            if (siparis == null)
            {
                return NotFound();
            }

            return View(siparis);
        }

        // POST: Admin/Siparis/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var siparis = await _context.Siparis.FindAsync(id);
            _context.Siparis.Remove(siparis);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool SiparisExists(int id)
        {
            return _context.Siparis.Any(e => e.Id == id);
        }
    }
}
