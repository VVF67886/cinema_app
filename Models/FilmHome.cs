using System;
using System.Collections.Generic;

namespace CinemaApi.Models;

public partial class FilmHome
{

    public FilmHome(Film film) { 
    
        Id = film.Id;
		Titolo = film.Titolo;
		Immagine = film.Immagine;
		Home = film.Home;
	}

    public int Id { get; set; }

    public string? Titolo { get; set; }

    public string? Immagine { get; set; }

    public int? Home { get; set; }
}
