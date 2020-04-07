# MSSA-Project

MSSAS7 repository for projects in C#, T-SQL, and ASP.NET.

Ready for review. <br />
Go to [Prototype](https://github.com/gowebUSA/MSSA-Project/tree/master/TSQL/Project-Step-7/prototype#online---maintenance-action-forms-o-maf) or see the live website at https://omaf.azurewebsites.net.

New update will be coming soon. I will apply MvcMovie App to O-MAF as baseline.

Ref: https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/start-mvc?view=aspnetcore-3.1&tabs=visual-studio

Credits: Some images from this project are from Microsoft PowerPoint template.

## Important Items:
1. [dotnet ef migrations add Initial] using cmd under the project folder on ASP.NET Core MVC 2 (ANCM2) page 214.
<br />Other method is on [ASP.NET Core 3.1 Tutorial](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/adding-model?view=aspnetcore-3.1&tabs=visual-studio#scaffold-movie-pages) by using Power Shell.
1. The default URL routing logic used by MVC uses a format like this to determine what code to invoke:
<br />[[/[Controller]/[ActionName]/[Parameters]](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/adding-controller?view=aspnetcore-3.1&tabs=visual-studio#add-a-controller)]
<br />The routing format is set in the Configure method in Startup.cs file but modified on ANCM2 page 230.
1. Use Microsoft.EntityFramework.SqlServer version 3.1.1
1. Remove all comments inside @foreach statement under Views/Shared/Components/NavigationMenu/Default.cshtml or else, the menu selection will not work.


### TODO:
- [ ] Add [search](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/search?view=aspnetcore-3.1) bar.
- [ ] Use SportStore Add to cart when an inspector is ready to sign off MAFs.
- [ ] Create more Tables for:
- Personnel
- Parts
- Discrepacy
- Complete
- Maintenance Control Remarks
- Contingency Process
- [ ] Implement security protocol for SQL database appsettings.json file. See ISTA 421 - [Week 3 Notes](https://erau.instructure.com/courses/111202/pages/week-3-notes?module_item_id=6301983). You will need credentials to ERAU. Or see the short version [here](https://github.com/gowebUSA/MSSA-Project/blob/master/files/Week%203%20Notes2.pdf).

### Log
1. 200330, Installed MVC. Finishes Add a Controller.
1. 200406, Collections:
 - Connected to SQL Server inside VM on Azure. Deploy SQL Server on Azure (Windows) VM. Currently unable to deploy Azure database server resources. This is a temporary, tested workaround. See Dan's solution at https://github.com/uid100/Deploy-SQLServer-on-Azure-VM.
 - Deployed website to Azure, sd7CadTempVM as computer name. The link for MSSA students for Azure is http://aka.ms/startedu. Followed this [insructions](https://github.com/uid100/Publish-AppService-to-Azure) from Dan Sullivan as well.
 - Resource: sd7CadTemp
1. 200407, Changed favicon.ico under wwwroot folder.
 
