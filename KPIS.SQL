SELECT nombre_producto, stock AS "stock original" , ventas, T1.stock - T2.ventas AS "Stock_disponible"
FROM Producto T1
INNER JOIN Cantven T2 ON T1.ID_producto = T2.ID_producto
WHERE volumen = 275
UNION
SELECT nombre_producto, stock AS "stock original" , ventas,  T1.stock - T2.ventas AS "Stock_disponible"
FROM Producto T1
INNER JOIN Cantven T2 ON T1.ID_producto = T2.ID_producto
WHERE volumen = 700;


SELECT SUM(importe) AS "Ingresos netos", SUM(cantidad) AS "Cantidad total vendida", SUM(importe) / SUM(cantidad) AS "Rentabilidad marginal por unidad"
FROM Orden T1
INNER JOIN Incluye T2 ON T1.ID_orden = T2.ID_orden;


SELECT COUNT( DISTINCT ID_cliente) AS "CLIENTESXMES" , COUNT( DISTINCT ID_cliente )/250.000 AS "Retencion"
FROM Orden 
WHERE fecha BETWEEN 43466 AND 43496
UNION
SELECT COUNT( DISTINCT ID_cliente), COUNT( DISTINCT ID_cliente)/250.000
FROM Orden 
WHERE fecha BETWEEN 43497 AND 43524
UNION
SELECT COUNT( DISTINCT ID_cliente), COUNT( DISTINCT ID_cliente)/250.000
FROM Orden 
WHERE fecha BETWEEN 43525 AND 43555
UNION
SELECT COUNT( DISTINCT ID_cliente) , COUNT( DISTINCT ID_cliente)/250.000
FROM Orden 
WHERE fecha BETWEEN 43556 AND 43585
UNION
SELECT COUNT( DISTINCT ID_cliente) , COUNT( DISTINCT ID_cliente)/250.000
FROM Orden 
WHERE fecha BETWEEN 43586 AND 43616;

SELECT nombre_producto, TOTAL 
FROM INGRESOSXVENTAS T1
INNER JOIN Producto T2 ON T1.ID_producto = T2.ID_producto
ORDER BY TOTAL DESC
