using System;
using System.Collections.Generic;
using System.Text.Json.Serialization;

namespace CinemaApi.Models;

public partial class FilmHome
{

    public FilmHome(Film film) { 
    
        Id = film.Id;
		Immagine = film.Immagine;
	}

    public int Id { get; set; }

	[JsonPropertyName("image")]
	public string? Immagine { get; set; }
}
