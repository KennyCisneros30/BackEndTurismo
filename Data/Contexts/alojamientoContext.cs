using System;
using System.Collections.Generic;
using Data.Models;
using Microsoft.EntityFrameworkCore;

namespace Data.Contexts;

public partial class alojamientoContext : DbContext
{
    public alojamientoContext()
    {
    }

    public alojamientoContext(DbContextOptions<alojamientoContext> options)
        : base(options)
    {
    }

    public virtual DbSet<Alojamiento> Alojamientos { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=DESKTOP-5755S3Q\\SQLEXPRESS;Database=Turismodbfirst;Trusted_Connection=True;MultipleActiveResultSets=True;TrustServerCertificate=True;");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Alojamiento>(entity =>
        {
            entity.HasKey(e => e.Id).HasName("PK__Alojamie__3214EC072EA070FB");

            entity.ToTable("Alojamiento");

            entity.Property(e => e.Calificacion).HasColumnType("decimal(2, 1)");
            entity.Property(e => e.Capacidad).HasMaxLength(50);
            entity.Property(e => e.Foto).HasMaxLength(255);
            entity.Property(e => e.Nombre).HasMaxLength(255);
            entity.Property(e => e.Precio).HasColumnType("decimal(10, 2)");
            entity.Property(e => e.Tipo).HasMaxLength(50);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
