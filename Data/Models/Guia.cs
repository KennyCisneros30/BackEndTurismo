using System;
using System.Collections.Generic;

namespace Data.Models;

public partial class Guia
{
    public int Id { get; set; }

    public string Name { get; set; } = null!;

    public int Age { get; set; }

    public bool Vehicle { get; set; }

    public string Years_of_Experience { get; set; } = null!;

    public string Excursion { get; set; } = null!;

    public string Image { get; set; } = null!;
}
