using System;
using System.Collections.Generic;

namespace Data.Models;

public partial class Transporte
{
    public int Id { get; set; }

    public string Tipo { get; set; } = null!;

    public string Marca { get; set; } = null!;

    public string Descripcion { get; set; } = null!;

    public string Capacidad { get; set; } = null!;

    public string Comodidad { get; set; } = null!;

    public string Imagen { get; set; } = null!;

    public decimal Precio { get; set; }
}
