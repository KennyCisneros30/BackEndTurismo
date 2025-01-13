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
    public class ExcursionController : ControllerBase
    {
        private readonly excursionContext _context;

        public ExcursionController(excursionContext context)
        {
            _context = context;
        }

        // GET: api/Excursions
        [HttpGet]
        public async Task<ActionResult<IEnumerable<Excursion>>> GetExcursions()
        {
            return await _context.Excursions.ToListAsync();
        }

        // GET: api/Excursions/5
        [HttpGet("{id}")]
        public async Task<ActionResult<Excursion>> GetExcursion(int id)
        {
            var excursion = await _context.Excursions.FindAsync(id);

            if (excursion == null)
            {
                return NotFound();
            }

            return excursion;
        }

        // PUT: api/Excursions/5
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPut("{id}")]
        public async Task<IActionResult> PutExcursion(int id, Excursion excursion)
        {
            if (id != excursion.Id)
            {
                return BadRequest();
            }

            _context.Entry(excursion).State = EntityState.Modified;

            try
            {
                await _context.SaveChangesAsync();
            }
            catch (DbUpdateConcurrencyException)
            {
                if (!ExcursionExists(id))
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

        // POST: api/Excursions
        // To protect from overposting attacks, see https://go.microsoft.com/fwlink/?linkid=2123754
        [HttpPost]
        public async Task<ActionResult<Excursion>> PostExcursion(Excursion excursion)
        {
            _context.Excursions.Add(excursion);
            await _context.SaveChangesAsync();

            return CreatedAtAction("GetExcursion", new { id = excursion.Id }, excursion);
        }

        // DELETE: api/Excursions/5
        [HttpDelete("{id}")]
        public async Task<IActionResult> DeleteExcursion(int id)
        {
            var excursion = await _context.Excursions.FindAsync(id);
            if (excursion == null)
            {
                return NotFound();
            }

            _context.Excursions.Remove(excursion);
            await _context.SaveChangesAsync();

            return NoContent();
        }

        private bool ExcursionExists(int id)
        {
            return _context.Excursions.Any(e => e.Id == id);
        }
    }
}
