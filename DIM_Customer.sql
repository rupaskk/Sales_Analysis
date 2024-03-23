-- Cleaned DIM_Customers Table --
SELECT 
	c.CustomerKey AS CustomerKey
     -- ,[GeographyKey]
     -- ,[CustomerAlternateKey]
     -- ,[Title]
    , c.FirstName AS [First Name]
     -- ,c[MiddleName]
    , c.LastName AS [Last Name]
	, c.FirstName + ' ' + LastName AS [Full Name]
     -- ,[NameStyle]
     -- ,[BirthDate]
     -- ,[MaritalStatus]
     -- ,[Suffix]
    , CASE c.Gender WHEN 'M' THEN 'Male' ELSE 'Female' END AS Gender
     -- ,[EmailAddress]
     -- ,[YearlyIncome]
     -- ,[TotalChildren]
     -- ,[NumberChildrenAtHome]
     -- ,[EnglishEducation]
     -- ,[SpanishEducation]
     -- ,[FrenchEducation]
     -- ,[EnglishOccupation]
     -- ,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
     -- ,[AddressLine1]
     -- ,[AddressLine2]
     -- ,[Phone]
    , c.DateFirstPurchase AS DateFirstPurchase
     -- ,CommuteDistance]
	, g.city AS [Customer City]
  FROM [AdventureWorksDW2022].[dbo].[DimCustomer] AS c
  LEFT JOIN [AdventureWorksDW2022].[dbo].[DimGeography] AS g
  ON c.GeographyKey = g.GeographyKey
  ORDER BY CustomerKey ASC
