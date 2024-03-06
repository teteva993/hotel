using Hotel;
using Microsoft.EntityFrameworkCore;
using System;


public class ApplicationContext : DbContext
{
    public DbSet<User> User { get; set; } = null!;
    public DbSet<Hotel_room> Hotel_room { get; set; } = null!;
    public ApplicationContext()
    {
        Database.EnsureCreated();
    }
    protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
    {
        optionsBuilder.UseNpgsql("Host=localhost;Port=5433;DataBase=Hotel_db;Username=postgres;Password=teteva123");
    }
}