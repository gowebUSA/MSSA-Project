### Steps for utilizing Entity Framework Core IdentityDbContext
Ref: Pro ASP.NET Core MVC 2

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
1. Add Migration
    * `Add-Migration Initial -Context AppIdentityDbContext`
1. Create seed data in the Models Folder.
    * `private const string adminUser = "Admin";`
    
      `private const string adminPassword = "Secret123$";`
      
      `public static async void EnsurePopulated(IApplicationBuilder app) {
        UserManager<IdentityUser> userManager = app.ApplicationServices
          .GetRequiredService<UserManager<IdentityUser>>();
        IdentityUser user = await userManager.FindByIdAsync(adminUser);`
        
        `if (user == null) {
          user = new IdentityUser("Admin");
          await userManager.CreateAsync(user, adminPassword);
        }
      }`
