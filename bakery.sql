/****** Script for SelectTopNRows command from SSMS  ******/
SELECT [Order NO]
      ,format([Order Date],'dd-MM-yyyy') as Date
	  ,datepart(quarter,[Month/Yr]) as quarters
      ,datepart(year,[Month/Yr]) as Year
	  ,datename(month,[Month/Yr]) as Months
      ,[Day of Week]
      ,[Pie Flavor]
      ,[Quantity]
      ,[Cost]
      ,[Slice Or Whole Pie]
      ,[Pre-Order/In-Store Purchase]
      ,CASE[Organic?]
	  WHEN 'No' THEN 'Not Organic'
	  ELSE 'Organic'
	  END AS Organic_vs_Not_Organic
  FROM [Bakery].[dbo].[Data$]
  --
  SELECT  [Pie Flavor], sum(Quantity) as sells, [Slice Or Whole Pie]

        ,CASE[Organic?]
	  WHEN 'No' THEN 'Not Organic'
	  ELSE 'Organic'
	  END AS Organic_vs_Not_Organic
     
 FROM [Bakery].[dbo].[Data$]
 group by [Pie Flavor], [Slice Or Whole Pie], CASE[Organic?]
	  WHEN 'No' THEN 'Not Organic'
	  ELSE 'Organic'
	  END 
 order by sells desc

--
 SELECT  sum(Quantity) as sells,

      CASE[Organic?]
	  WHEN 'No' THEN 'Not Organic'
	  ELSE 'Organic'
	  END AS Organic_vs_Not_Organic

   ,datepart(year,[Month/Yr]) as Year
   
 FROM [Bakery].[dbo].[Data$]
 group by CASE[Organic?]
	  WHEN 'No' THEN 'Not Organic'
	  ELSE 'Organic'
	  END,
	  datepart(year,[Month/Yr])
 order by sells desc, year

 SELECT  sum(Quantity) as sells, [Slice Or Whole Pie]
 FROM [Bakery].[dbo].[Data$]
 group by [Slice Or Whole Pie]





 SELECT [Order NO]
      ,format([Order Date],'dd/MM/yyyy') as Date
	  ,format([Order Date],'MM/yyyy') as Months_year
	  ,datepart(quarter,[Month/Yr]) as quarters
      ,datepart(year,[Month/Yr]) as Year
	  ,datename(month,[Month/Yr]) as Months
      ,[Day of Week]
      ,[Pie Flavor]
      ,[Quantity]
      ,[Cost]
      ,[Slice Or Whole Pie]
      ,[Pre-Order/In-Store Purchase]
      ,CASE[Organic?]
	  WHEN 'No' THEN 'Not Organic'
	  ELSE 'Organic'
	  END AS Organic_vs_Not_Organic
  FROM [Bakery].[dbo].[Data$]


