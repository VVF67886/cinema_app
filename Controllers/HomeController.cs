using CinemaApi.Models;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;

namespace CinemaApi.Controllers
{
	[Route("api/[controller]")]
	[ApiController]
	public class HomeController : ControllerBase
	{
		private readonly CinemaContext _context;

		public HomeController(CinemaContext context)
		{
			_context = context;
		}


		[HttpGet]
		public async Task<ActionResult<IEnumerable<FilmHome>>> GetFilms()
		{
			return await _context.Films
				.Where(x => x.Home != null)
				.OrderBy(x => x.Home)
				.Select(x=> new FilmHome(x))
				.ToListAsync();
		}

	}
}
