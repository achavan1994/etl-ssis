Use WideWorldImporters
GO

-- Grabs the relevant data that will be imported into the Merged Database

Select [StockItemName] AS [Name]				-- Will be imported into the merged tables
      ,[ColorID]								-- Will be imported into the merged tables
      ,[Size]									-- Will be imported into the merged tables
      ,[TaxRate]								-- Will not be imported, but used to calculate the final unit price
      ,[UnitPrice]								-- Will be imported after adding the tax rate
      ,[RecommendedRetailPrice]					-- Will be imported into the merged tables
      ,[ItemType] = CASE						-- Will be used to define whether the item is a product or clothing
		WHEN Size IN ('S','M','L','3XL','3XS','4XL','5XL','6XL','7XL','XS','XXS','XL','XXL') THEN 'Clothing' 
		ELSE 'Product'
		END 
FROM [WideWorldImporters].[Warehouse].[StockItems]