SELECT Cliente.Cod_Cliente, Cliente.Id_Cliente, PLs.Id_ComponenteIngreso, Ingreso.*
	FROM [172.18.10.62].[DWHINTELIGO].[dbo].[Ft_Ingreso] Ingreso, 
		 [172.18.10.62].[DWHINTELIGO].[dbo].[Lk_Cliente] Cliente,
		 [172.18.10.62].[DWHINTELIGO].[dbo].[Lk_ComponenteIngreso] PLs
	WHERE Cliente.Id_Cliente = Ingreso.Id_Cliente 
		AND Pls.Cod_ComponenteIngreso = 51000


SELECT Cliente.Cod_Cliente, Cliente.Id_Cliente, PLs.Id_ComponenteIngreso, Left(Ingreso.Id_Dia,4) anho, Ingreso.*
	FROM [172.18.10.62].[DWHINTELIGO].[dbo].[Ft_Ingreso] Ingreso, 
		 [172.18.10.62].[DWHINTELIGO].[dbo].[Lk_Cliente] Cliente,
		 [172.18.10.62].[DWHINTELIGO].[dbo].[Lk_ComponenteIngreso] PLs
	WHERE Cliente.Id_Cliente = Ingreso.Id_Cliente 
		AND Pls.Cod_ComponenteIngreso = 51000 
		AND Left(Ingreso.Id_Dia,4) = 2020

-- PL ingreso por interés 51000
SELECT
TbClientes.Cod_Cliente,
LEFT(RIGHT(TbIngreso.Id_Dia,4),2) AS Mes,
SUM(TbIngreso.Ingreso)
FROM
[172.18.10.62].[DWHINTELIGO].[dbo].[Ft_Ingreso] as TbIngreso,
[172.18.10.62].[DWHINTELIGO].[dbo].[Lk_Cliente] as TbClientes
WHERE
	(TbIngreso.Id_Cliente = TbClientes.Id_Cliente and TbIngreso.id_ComponenteIngreso = 6
	 and LEFT(TbIngreso.Id_Dia,4) = 2020)
GROUP BY
	TbClientes.Cod_Cliente, LEFT(RIGHT(TbIngreso.Id_Dia,4),2)
ORDER BY
	TbClientes.Cod_Cliente ASC,LEFT(RIGHT(TbIngreso.Id_Dia,4),2) ASC;


	-- check PL 51997 está por sector
SELECT
	LEFT(TbIngreso.Id_Dia,4) as Anho,
	LEFT(RIGHT(TbIngreso.Id_Dia,4),2) AS Mes,
	TbIngreso.*
FROM
	[172.18.10.62].[DWHINTELIGO].[dbo].[Ft_Ingreso] as TbIngreso,
	[172.18.10.62].[DWHINTELIGO].[dbo].[Lk_Cliente] as TbClientes
WHERE
	(TbIngreso.id_ComponenteIngreso = 5
		and LEFT(TbIngreso.Id_Dia,4) = 2020)
ORDER BY
	TbClientes.Cod_Cliente ASC,LEFT(RIGHT(TbIngreso.Id_Dia,4),2) ASC;


SELECT top 100 *
  FROM [172.18.10.62].[DWHINTELIGO].[dbo].[Lk_ComponenteIngreso]

SELECT
TbClientes.Cod_Cliente,
LEFT(RIGHT(TbIngreso.Id_Dia,4),2) AS Mes,
SUM(TbIngreso.Ingreso)
FROM
[172.18.10.62].[DWHINTELIGO].[dbo].[Ft_Ingreso] as TbIngreso,
[172.18.10.62].[DWHINTELIGO].[dbo].[Lk_Cliente] as TbClientes
WHERE
	(TbIngreso.Id_Cliente = TbClientes.Id_Cliente and TbIngreso.id_ComponenteIngreso = 1
	 and LEFT(TbIngreso.Id_Dia,4) = 2020)
GROUP BY
	TbClientes.Cod_Cliente, LEFT(RIGHT(TbIngreso.Id_Dia,4),2)
ORDER BY
	TbClientes.Cod_Cliente ASC,LEFT(RIGHT(TbIngreso.Id_Dia,4),2) ASC;