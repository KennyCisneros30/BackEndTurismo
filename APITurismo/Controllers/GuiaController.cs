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
    public class GuiaController : ControllerBase
    {
        private readonly guiaContext _context;

        public GuiaController(guiaContext context)
        {
            _context = context;
        }

        // GET: api/Guias
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Guia>>> GetGuia()
        {
            return await _context.Guia.ToListAsync();
        }

        // GET: api/Guias/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Guia>> GetGuia(int id)
        {
            var guia = await _context.Guia.FindAsync(id);

            if (guia == null)
            {
                return NotFound();
            }

            return guia;
        }

        // PUT: api/Guias/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutGuia(int id, Guia guia)
        {
            if (id != guia.Id)
            {
                return BadRequest();
            }

            _context.Entry(guia).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!GuiaExists(id))
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

        // POST: api/Guias
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Guia>> PostGuia(Guia guia)
        {
            _context.Guia.Add(guia);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetGuia", new { id = guia.Id }, guia);
        }

        // DELETE: api/Guias/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteGuia(int id)
        {
            var guia = await _context.Guia.FindAsync(id);
            if (guia == null)
            {
                return NotFound();
            }

            _context.Guia.Remove(guia);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool GuiaExists(int id)
        {
            return _context.Guia.Any(e => e.Id == id);
        }
    }
}
