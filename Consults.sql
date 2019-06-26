-- Menos fabricados
SELECT TOP 5 nombre_producto, stock AS 'Cantidad Fabricada'
FROM Producto 
ORDER BY stock ASC;

-- Mas fabricados 
SELECT TOP 5 nombre_producto, stock AS 'Cantidad Fabricada'
FROM Producto 
ORDER BY stock DESC;

--Numero de clientes mayo
SELECT COUNT( DISTINCT ID_cliente) AS 'Nro clientes mayo'
FROM Orden 
WHERE fecha BETWEEN 43586 AND 43616;

-- Ingresos generados por los productos mas vendidos
SELECT ID_producto, SUM(cantidad) AS 'Cantidad_Total' INTO Sumatoria
FROM Incluye
GROUP BY ID_producto
ORDER BY ID_producto;

SELECT nombre_producto, Cantidad_Total
FROM Producto T1
INNER JOIN Sumatoria T2 ON T1.ID_producto = T2.ID_producto
ORDER BY Cantidad_Total DESC;

-- 4 JOIN
SELECT fecha, nombre_cliente, nombre_producto, monto, cantidad
FROM Incluye T1
INNER JOIN Producto T2 ON T1.ID_producto = T2.ID_producto
INNER JOIN Orden T3 ON  T1.ID_orden = T3.ID_orden
INNER JOIN Cliente T4 ON T3.ID_cliente = T4.ID_cliente
ORDER BY fecha, nombre_cliente ASC

-- Rentabilidad
SELECT SUM(importe) AS "Ingresos netos", SUM(cantidad) AS "Cantidad total vendida", SUM(importe) / SUM(cantidad) AS "Rentabilidad marginal por unidad"
FROM Orden T1
INNER JOIN Incluye T2 ON T1.ID_orden = T2.ID_orden;

--Union 
SELECT ID_producto, SUM(cantidad) as 'ventas' INTO Cantven
FROM Incluye T1
INNER JOIN Orden T2 ON T1.ID_orden = T2.ID_orden
GROUP BY ID_producto
ORDER BY ID_producto 

SELECT * 
From Cantven
order by ID_producto

SELECT nombre_producto, stock AS "stock original" , ventas, T1.stock - T2.ventas AS "Stock_disponible"
FROM Producto T1
INNER JOIN Cantven T2 ON T1.ID_producto = T2.ID_producto
WHERE volumen = 275
UNION
SELECT nombre_producto, stock AS "stock original" , ventas,  T1.stock - T2.ventas AS "Stock_disponible"
FROM Producto T1
INNER JOIN Cantven T2 ON T1.ID_producto = T2.ID_producto
WHERE volumen = 700

SELECT COUNT( DISTINCT ID_cliente) AS 'Totclientes' INTO CLIENTPROM
FROM Orden 
WHERE fecha BETWEEN 43466 AND 43496
UNION
SELECT COUNT( DISTINCT ID_cliente) 
FROM Orden 
WHERE fecha BETWEEN 43497 AND 43524
UNION
SELECT COUNT( DISTINCT ID_cliente) 
FROM Orden 
WHERE fecha BETWEEN 43525 AND 43555
UNION
SELECT COUNT( DISTINCT ID_cliente) 
FROM Orden 
WHERE fecha BETWEEN 43556 AND 43585
UNION
SELECT COUNT( DISTINCT ID_cliente) 
FROM Orden 
WHERE fecha BETWEEN 43586 AND 43616

SELECT AVG(Totclientes) as "AVGCL" into PROM1
FROM CLIENTPROM T1

SELECT COUNT(ID_cliente) as "Totcl" INTO SUM1
from Cliente

SELECT (AVGCL / Totcl) as "Ratio perm clientes" 
from PROM1
INNER JOIN SUM1 ON AVGCL = Totcl