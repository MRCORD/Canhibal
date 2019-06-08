/* Extractions & subsetting*/
SELECT nombre_producto, precio
FROM Producto
WHERE volumen = 275; /* Se desea conocer el precio de todos los cañibal en presentacion de 275ml*/

SELECT AVG(stock) AS "stock promedio"
FROM Producto
WHERE precio = 22.9; /* Stock promedio de los cañibal que cuestan 22.9*/

SELECT nombre_producto, stock AS "stock original" ,  T1.stock - T2.cantidad AS "Stock disponible"
FROM Producto T1
INNER JOIN Incluye T2 ON T1.ID_producto = T2.ID_producto; /* Stock disponible despues de las ventas*/

SELECT SUM(importe) AS "Ingresos netos", SUM(cantidad) AS "Cantidad total vendida", SUM(importe) / SUM(cantidad) AS "Rentabilidad marginal por unidad"
FROM Orden T1
INNER JOIN Incluye T2 ON T1.ID_orden = T2.ID_orden;

SELECT nombre_producto, monto, cantidad
FROM Incluye T1
INNER JOIN Producto T2 on T1.ID_producto = T2.ID_producto
INNER JOIN Orden T3 on  T1.ID_orden = T3.ID_orden ; /*resumen de ventas*/

SELECT *
FROM Provee