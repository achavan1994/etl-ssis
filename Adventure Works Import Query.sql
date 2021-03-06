Use AdventureWorks2017
GO

-- Grabs the relevant data that will be imported into the Merged Database

SELECT [Name]						-- Will be imported into the merged tables
      ,[Color]						-- Will be imported into the merged tables
      ,[StandardCost] AS Cost		-- Will be imported into the merged tables
      ,[ListPrice] AS RetailPrice	-- Will be imported into the merged tables
      ,[Size]						-- Will be imported into the merged tables
      ,[ItemType] = CASE			-- Will be used to define whether the item is a product or clothing
		WHEN Size IN ('S','M','L','XL') THEN 'Clothing' 
		ELSE 'Product'
		END 
FROM [AdventureWorks2017].[Production].[Product]

-- I only want active products, so whatever has a SendEndDate won't be imported
WHERE SellEndDate IS NULL