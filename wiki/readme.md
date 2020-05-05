Wiki folder for good instrux=ctions link.

### Table of Contents
1. Connecting to Azure SQL Server to Visual Studio
   * Use the prefix and the port.
      * tcp:mssasqlserver.database.windows.net,{port}
      * Ommit the {port} to include the brackets and replace it with your port.
1. EF Update-Database
   * https://tom-jaeschke.blogspot.com/2019/07/more-than-one-dbcontext-was-found.html
      * Add-Migration myMigration -Context GameContext
      * update-database -Context GameContext

