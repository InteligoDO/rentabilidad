/****** Script for SelectTopNRows command from SSMS  ******/

-- respuesta en todo 2020 33405
SELECT *
  FROM [ITLGDWH].[dbo].[tblMoneyMarket] where Yr = 2020

-- respuesta en todo 10516
SELECT * FROM [172.18.10.62].[ODSINTELIGO].[dbo].[tblMoneyMarket]
	where Yr = 2020