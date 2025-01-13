using System;
using System.Collections.Generic;

namespace Data.Models;

public partial class Actividad
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public string Description { get; set; } = null!;

    public string Category { get; set; } = null!;

    public bool Rating { get; set; }

    public string Image { get; set; } = null!;

    public decimal Price { get; set; }
}
