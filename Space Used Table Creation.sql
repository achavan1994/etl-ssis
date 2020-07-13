/* Switches to the AdventureWorks2017 database */
Use AdventureWorks2017

/* Creates the SpaceUsed table, that will hold the results of the sp_spaceused stored procedure */
Create Table SpaceUsed 
(
	TableName NVARCHAR(200),
	TotalRows NVARCHAR(200),
	Reserved NVARCHAR(200),
	TableData NVARCHAR(200),
	Index_Size NVARCHAR(200),
	Unused NVARCHAR(200)
)
