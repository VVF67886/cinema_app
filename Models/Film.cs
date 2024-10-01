using System;
using System.Collections.Generic;

namespace CinemaApi.Models;

public partial class Film
{
    public int Id { get; set; }

    public string? Titolo { get; set; }

    public string? Trama { get; set; }

    public int? Anno { get; set; }

    public DateOnly? DataUscita { get; set; }

    public int? ProduttoreId { get; set; }

    public int? RegistaId { get; set; }

    public int? GenereId { get; set; }

    public string? Immagine { get; set; }

    public int? Home { get; set; }

    public virtual Generi? Genere { get; set; }

    public virtual Produttori? Produttore { get; set; }

    public virtual Registi? Regista { get; set; }
}
