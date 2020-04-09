# MSSA-Project
MSSASD7 repository for projects in C#, T-SQL, and ASP.NET.
## O-MAF Project
Ready for review. <br />
Go to [Prototype](https://github.com/gowebUSA/MSSA-Project/tree/master/TSQL/Project-Step-7/prototype#online---maintenance-action-forms-o-maf) or see the live website at https://omaf.azurewebsites.net.

New update will be coming soon. I will apply MvcMovie App to O-MAF as baseline.

Ref: https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/start-mvc?view=aspnetcore-3.1&tabs=visual-studio

Credits: Some images from this project are from Microsoft PowerPoint template.

### Project Steps
Project Management [Link](https://github.com/users/gowebUSA/projects/1)
- [x] Project Step 1 C# - Concept Investigation
- [x] Project Step 2 C# - Project Selection
- [x] Project Step 3 C# - Presentation/Peer Review
- [x] Project Step 4 SQL - DB Design
- [x] Project Step 5 SQL - DB Implementation
- [x] Project Step 6 SQL - UI/UX Wireframe(s)
- [x] Project Step 7 MVC - Requirements, Use Case
- [x] Project Step 8 MVC - Test Planning
- [x] Project Step 9 MVC - Prototype
- [x] Project Step 10 Azure - In-Process Review (IPR)
- [x] Project Step 11 Azure - Data Model class implementation (EF)
- [ ] [Project Step 12 Azure](https://github.com/gowebUSA/MSSA-Project/tree/master/ProjectSteps/ProjectStep12) - DB Integration
- [ ] Project Step 13 Azure - Sprint Planning
- [ ] Project Step 14 Azure - Sprint Review
- [ ] Project Step 15 Azure - Preliminary Product Delivery
- [ ] Project Step 16 Azure - CSS & Responsive Design
- [ ] Project Step 17 Azure - TDD/Updated Test Report
- [ ] Project Step 18 Azure - Final Project Review

### Important Notes:
1. [dotnet ef migrations add Initial] using cmd under the project folder on ASP.NET Core MVC 2 (ANCM2) page 214.
<br />Other method is on [ASP.NET Core 3.1 Tutorial](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/adding-model?view=aspnetcore-3.1&tabs=visual-studio#scaffold-movie-pages) by using Power Shell.
1. The default URL routing logic used by MVC uses a format like [this](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/adding-controller?view=aspnetcore-3.1&tabs=visual-studio#add-a-controller) to determine what code to invoke:
<br />`/[Controller]/[ActionName]/[Parameters`
<br />The routing format is set in the Configure method in Startup.cs file but modified on ANCM2 page 230.
1. Use Microsoft.EntityFramework.SqlServer version 3.1.1
1. Remove all comments inside @foreach statement under Views/Shared/Components/NavigationMenu/Default.cshtml or else, the menu selection will not work. ANCM2 page 214
1. Remove the connection strings on your appsettings.json file by adding this code when [committing to GitHub](https://help.github.com/en/github/importing-your-projects-to-github/adding-an-existing-project-to-github-using-the-command-line).<br />
`# ignore appsettings configuration files`<br />
`**/appsettings.json`<br />
`**/appsettings.development.json`<br />
`**/appsettings.staging.json`<br />
`**/appsettings.production.json`


### TODO:
- [ ] Add a [search](https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-mvc-app/search?view=aspnetcore-3.1) bar.
- [ ] Use SportStore Add to cart when an inspector is ready to sign off MAFs.
- [ ] Create more Tables for:
  * Personnel
  * Parts
  * Discrepacy
  * Complete
  * Maintenance Control Remarks
  * Contingency Process
- [ ] Implement security protocol for SQL database appsettings.json file. See ISTA 421 - [Week 3 Notes](https://erau.instructure.com/courses/111202/pages/week-3-notes?module_item_id=6301983). You will need credentials to ERAU. Or see the short version [here](https://github.com/gowebUSA/MSSA-Project/blob/master/files/Week%203%20Notes2.pdf).
- [x] Create Project Steps Lists.
- [ ] Create new SQL Database in Azure 
  * connect OMAF data to it.
  * From Azure SQL overview, Allow Azure services and resources to access this server to YES.

### LOG
1. 200330, Installed MVC. Finishes Added Controller, View, Model, Database, and Controller/Actions/Views.
2. 200406, Collections:
  * Connected to SQL Server inside VM on Azure. Deploy SQL Server on Azure (Windows) VM. Currently unable to deploy Azure database server resources. This is a temporary, tested workaround. See Dan's solution at https://github.com/uid100/Deploy-SQLServer-on-Azure-VM.
  * Deployed website to Azure, sd7CadTempVM as computer name. The link for MSSA students for Azure is http://aka.ms/startedu. Followed this [insructions](https://github.com/uid100/Publish-AppService-to-Azure) from Dan Sullivan as well.
  * Resource: sd7CadTemp
  * Updated the Disclaimer and Privacy statements, copied from usmc.mil and DoD websites.
3. 200407, Changed favicon.ico under wwwroot folder.
4. 200408, Checked and created the submission requirements for [Project Step 12 here](https://github.com/gowebUSA/MSSA-Project/tree/master/ProjectSteps/ProjectStep12). Since Azure SQL Database started working again, I created a new database in Azure `Database Name: sd7omaf`.
