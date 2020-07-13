/*
This part of the code will get the table name and add the schema name to it, inserting it on the @fullname variable.
That's because the loop container will get only the table name without the schema, and we need to refer to it as schema.table.
For example, select * from department will fail, whereas select * from humanresources.department will succeed. 
*/
Declare @fullname varchar(200) = (SELECT '['+SCHEMA_NAME(schema_id)+'].['+name+']' FROM sys.tables where name = 'Department')

/* This populates the SpaceUsed table based on the results of the sp_spaceused stored procedure */
Insert SpaceUsed EXEC sp_spaceused @fullname

/* This part of the code will return the total number of records inserted so that the SQL Task can further process it */
Select Count(*) as TotalRowCount from SpaceUsed

/* This is just to truncate the table before coming back to SSIS */
Truncate Table SpaceUsed