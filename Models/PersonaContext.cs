using Microsoft.EntityFrameworkCore;
namespace Models;

public class PersonasContext : DbContext
{
    public PersonasContext(DbContextOptions<PersonasContext> options) : base(options)
    {
        AppContext.SetSwitch("Npgsql.EnableLegacyTimestampBehavior", true);
    }
    public DbSet<Persona> Personas { get; set; }
}