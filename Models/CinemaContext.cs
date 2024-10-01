using System;
using System.Collections.Generic;
using Microsoft.EntityFrameworkCore;

namespace CinemaApi.Models;

public partial class CinemaContext : DbContext
{
    public CinemaContext()
    {
    }

    public CinemaContext(DbContextOptions/*<CinemaContext>*/ options)
        : base(options)
    {
    }

    public virtual DbSet<Film> Films { get; set; }

    public virtual DbSet<Generi> Generis { get; set; }

    public virtual DbSet<Produttori> Produttoris { get; set; }

    public virtual DbSet<Registi> Registis { get; set; }

    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
#warning To protect potentially sensitive information in your connection string, you should move it out of source code. You can avoid scaffolding the connection string by using the Name= syntax to read it from configuration - see https://go.microsoft.com/fwlink/?linkid=2131148. For more guidance on storing connection strings, see https://go.microsoft.com/fwlink/?LinkId=723263.
        => optionsBuilder.UseSqlServer("Server=localhost\\SQLEXPRESS;initial catalog=Cinema;user id=sa;password=sa;TrustServerCertificate=true");

    protected override void OnModelCreating(ModelBuilder modelBuilder)
    {
        modelBuilder.Entity<Film>(entity =>
        {
            entity.ToTable("Film");

            entity.Property(e => e.Immagine).HasMaxLength(250);
            entity.Property(e => e.Titolo).HasMaxLength(250);

            entity.HasOne(d => d.Genere).WithMany(p => p.Films)
                .HasForeignKey(d => d.GenereId)
                .HasConstraintName("FK_Film_Generi");

            entity.HasOne(d => d.Produttore).WithMany(p => p.Films)
                .HasForeignKey(d => d.ProduttoreId)
                .HasConstraintName("FK_Film_Produttori");

            entity.HasOne(d => d.Regista).WithMany(p => p.Films)
                .HasForeignKey(d => d.RegistaId)
                .HasConstraintName("FK_Film_Registi");
        });

        modelBuilder.Entity<Generi>(entity =>
        {
            entity.ToTable("Generi");

            entity.Property(e => e.Nome).HasMaxLength(250);
        });

        modelBuilder.Entity<Produttori>(entity =>
        {
            entity.ToTable("Produttori");

            entity.Property(e => e.Nome).HasMaxLength(250);
        });

        modelBuilder.Entity<Registi>(entity =>
        {
            entity.ToTable("Registi");

            entity.Property(e => e.Nome).HasMaxLength(250);
        });

        OnModelCreatingPartial(modelBuilder);
    }

    partial void OnModelCreatingPartial(ModelBuilder modelBuilder);
}
