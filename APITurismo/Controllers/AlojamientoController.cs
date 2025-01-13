using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using Data.Contexts;
using Data.Models;

namespace APITurismo.Controllers
{
    [Route("api/[controller]")]
    [ApiController]
    public class AlojamientoController : ControllerBase
    {
        private readonly alojamientoContext _context;

        public AlojamientoController(alojamientoContext context)
        {
            _context = context;
        }

        // GET: api/Alojamientoes
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Alojamiento>>> GetAlojamientos()
        {
            return await _context.Alojamientos.ToListAsync();
        }

        // GET: api/Alojamientoes/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Alojamiento>> GetAlojamiento(int id)
        {
            var alojamiento = await _context.Alojamientos.FindAsync(id);

            if (alojamiento == null)
            {
                return NotFound();
            }

            return alojamiento;
        }

        // PUT: api/Alojamientoes/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutAlojamiento(int id, Alojamiento alojamiento)
        {
            if (id != alojamiento.Id)
            {
                return BadRequest();
            }

            _context.Entry(alojamiento).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!AlojamientoExists(id))
                {
                    return NotFound();
                }
                else
                {
                    throw;
                }
            }

            return NoContent();
        }

        // POST: api/Alojamientoes
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Alojamiento>> PostAlojamiento(Alojamiento alojamiento)
        {
            _context.Alojamientos.Add(alojamiento);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetAlojamiento", new { id = alojamiento.Id }, alojamiento);
        }

        // DELETE: api/Alojamientoes/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteAlojamiento(int id)
        {
            var alojamiento = await _context.Alojamientos.FindAsync(id);
            if (alojamiento == null)
            {
                return NotFound();
            }

            _context.Alojamientos.Remove(alojamiento);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool AlojamientoExists(int id)
        {
            return _context.Alojamientos.Any(e => e.Id == id);
        }
    }
}
