using System;
using System.Collections.Generic;

namespace CinemaApi.Models;

public partial class Generi
{
    public int Id { get; set; }

    public string? Nome { get; set; }

    public virtual ICollection<Film> Films { get; set; } = new List<Film>();
}
