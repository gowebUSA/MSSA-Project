Steps for utilizing Entity Framework Core IdentityDbContext

1. Make IdentityDbContext
  * Install Microsoft.AspNetCore.Identity.EntityFrameworkCore; on NuGet ver 3.1.1 or 3.1.3
  * `using Microsoft.AspNetCore.Identity.EntityFrameworkCore;`
  * Use `: IdentityDbContext` interface.
1. Define a new Connectionstring as new database.
 * Connection string has to be defined in a single unbroken line in the appsettings.json.
1. Configuring Identity in the Startup.cs File
 * Add using statement `using Microsoft.AspNetCore.Identity;`.
 * `services.AddDbContext<AppIdentityDbContext>(options =>`
    `options.UseSqlServer(`
     `Configuration["Data:SportStoreIdentity:ConnectionString"]));`
     
   `services.AddIdentity<IdentityUser, IdentityRole>()`
    `.AddEntityFrameworkStores<AppIdentityDbContext>()`
    `.AddDefaultTokenProviders();`
    
 * Add the `app.UseAuthentication();` method before the UseMvc() method.  
