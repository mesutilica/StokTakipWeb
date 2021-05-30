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
    public class MarkaController : Controller
    {
        private readonly DatabaseContext _context;

        public MarkaController(DatabaseContext context)
        {
            _context = context;
        }

        // GET: Admin/Marka
        public async Task<IActionResult> Index()
        {
            return View(await _context.Marka.ToListAsync());
        }

        // GET: Admin/Marka/Details/5
        public async Task<IActionResult> Details(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var marka = await _context.Marka
                .FirstOrDefaultAsync(m => m.Id == id);
            if (marka == null)
            {
                return NotFound();
            }

            return View(marka);
        }

        // GET: Admin/Marka/Create
        public IActionResult Create()
        {
            return View();
        }

        // POST: Admin/Marka/Create
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Create([Bind("Id,MarkaAdi,MarkaAciklamasi,EklenmeTarihi,Aktif,MarkaLogo")] Marka marka)
        {
            if (ModelState.IsValid)
            {
                _context.Add(marka);
                await _context.SaveChangesAsync();
                return RedirectToAction(nameof(Index));
            }
            return View(marka);
        }

        // GET: Admin/Marka/Edit/5
        public async Task<IActionResult> Edit(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var marka = await _context.Marka.FindAsync(id);
            if (marka == null)
            {
                return NotFound();
            }
            return View(marka);
        }

        // POST: Admin/Marka/Edit/5
        // To protect from overposting attacks, enable the specific properties you want to bind to.
        // For more details, see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> Edit(int id, [Bind("Id,MarkaAdi,MarkaAciklamasi,EklenmeTarihi,Aktif,MarkaLogo")] Marka marka)
        {
            if (id != marka.Id)
            {
                return NotFound();
            }

            if (ModelState.IsValid)
            {
                try
                {
                    _context.Update(marka);
                    await _context.SaveChangesAsync();
                }
                catch (DbUpdateConcurrencyException)
                {
                    if (!MarkaExists(marka.Id))
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
            return View(marka);
        }

        // GET: Admin/Marka/Delete/5
        public async Task<IActionResult> Delete(int? id)
        {
            if (id == null)
            {
                return NotFound();
            }

            var marka = await _context.Marka
                .FirstOrDefaultAsync(m => m.Id == id);
            if (marka == null)
            {
                return NotFound();
            }

            return View(marka);
        }

        // POST: Admin/Marka/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public async Task<IActionResult> DeleteConfirmed(int id)
        {
            var marka = await _context.Marka.FindAsync(id);
            _context.Marka.Remove(marka);
            await _context.SaveChangesAsync();
            return RedirectToAction(nameof(Index));
        }

        private bool MarkaExists(int id)
        {
            return _context.Marka.Any(e => e.Id == id);
        }
    }
}
