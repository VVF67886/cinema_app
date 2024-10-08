using CinemaApi.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
using System.Globalization;

namespace CinemaApi.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class FilmController : ControllerBase
	{
		private readonly CinemaContext _context;

		public FilmController(CinemaContext context)
		{
			_context = context;
		}


		//[HttpGet("week/{week}")]
		//public async Task<ActionResult<IEnumerable<Film>>> GetFilms(int week)
		//{
		//	return await _context.Films
		//		.Where(x => x.DataUscita != null && GetIso8601WeekOfYear(x.DataUscita.Value.ToDateTime(new TimeOnly(1, 0, 0))) == week)
		//		.ToListAsync();
		//}


		[HttpGet("{id}")]
		public async Task<ActionResult<Film>> GetClienti(int id)
		{
			var film = await _context.Films.FindAsync(id);

			if (film == null)
			{
				return NotFound();
			}

			return film;
		}


		private int GetIso8601WeekOfYear(DateTime time)
		{
			DayOfWeek day = CultureInfo.InvariantCulture.Calendar.GetDayOfWeek(time);
			if (day >= DayOfWeek.Monday && day <= DayOfWeek.Wednesday)
			{
				time = time.AddDays(3);
			}

			return CultureInfo.InvariantCulture.Calendar.GetWeekOfYear(time, CalendarWeekRule.FirstFourDayWeek, DayOfWeek.Monday);
		}

	}
}
