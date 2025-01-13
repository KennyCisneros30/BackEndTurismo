using System;
using System.Collections.Generic;

namespace Data.Models;

public partial class Alojamiento
{
    public int Id { get; set; }

    public string Nombre { get; set; } = null!;

    public string Tipo { get; set; } = null!;

    public string Capacidad { get; set; } = null!;

    public string Direccion { get; set; } = null!;

    public decimal Calificacion { get; set; }

    public decimal Precio { get; set; }

    public string Foto { get; set; } = null!;
}
