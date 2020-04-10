# Project Step 11 Azure
Data Model class implementation (EF)

Model Classes
Working from your design, you will implement the data model component(s) of your project you may use Entity Framework to map the classes to the database table entities and the tables to the classes.
________________________________________
Your implementation will focus on the data and processing component. We will focus on user interfaces later.
________________________________________
Database diagrams can be easily created and modified using SQL Server Management Studio as in the example below.
<br />Step 1. Create the tables and define the key constraints
<br />•	https://github.com/gowebUSA/MSSA-Project/blob/master/T-SQL/o_maf.sql
<br />Step 2. Use SSMS to generate the diagram(s)
 
Find the database in the Object Explorer, Right-Click Database Diagrams to create the new diagram. Select the tables that you want to include from the database. The Diagram can be modified by dragging the components around within the image.
________________________________________
Deliverables
Implement a subset of the requirements you have previously identified. You are not expected to implement the entire project. When it is ready for review, submit the link to your Github project folder which should point to the structure of your source code and will include
1.	folders for Models, Views, and Controllers, and
2.	within your Models folder will be C# class files which describe and map to your database table entities.
3.	You should develop an interface in addition to
4.	the primary data model, which the data model implements.
5.	You will also create a "Fake" or "Test Double" class which also implements the data interface.
6.	In addition to your source code, use SSMS to auto-generate a database diagram and attach it to your project documents linked to your README.md as follows:
*
o	Go to Sql Server Management Studio > Object Explorer > Databases > Choose and expand your Database.
o	Right-click "Database Diagrams" and select "New Database Diagram".
o	Select and Add tables
o	Wait for it to complete and drag the tables to arrange them.


