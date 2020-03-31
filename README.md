# MSSA-Project

MSSAS7 repository for projects in C#, T-SQL, and ASP.NET.

Ready for review. <br />
Go to [Prototype](https://github.com/gowebUSA/MSSA-Project/tree/master/TSQL/Project-Step-7/prototype#online---maintenance-action-forms-o-maf).

New update will be coming soon. I will apply MvcMovie App to O-MAF as baseline.

Ref: https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/start-mvc?view=aspnetcore-3.1&tabs=visual-studio

Credits: Some images from this project are from Microsoft PowerPoint template.

## Important codes:
1. [dotnet ef migrations add Initial] using cmd under the project folder on ASP.NET Core MVC 2 (ANCM2) page 214.
<br />Other method is on [ASP.NET Core 3.1 Tutorial](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/adding-model?view=aspnetcore-3.1&tabs=visual-studio#scaffold-movie-pages) by using Power Shell.
2. The default URL routing logic used by MVC uses a format like this to determine what code to invoke:
<br />[[/[Controller]/[ActionName]/[Parameters]](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/adding-controller?view=aspnetcore-3.1&tabs=visual-studio#add-a-controller)]
<br />The routing format is set in the Configure method in Startup.cs file but modified on ANCM2 page 230.

### Log
1. 200330, Installed MVC. Finishes Add a Controller.
2. 
