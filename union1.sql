
SELECT ID_producto, SUM(cantidad) as 'ventas' INTO Cantven
FROM Incluye T1
INNER JOIN Orden T2 ON T1.ID_orden = T2.ID_orden
WHERE fecha BETWEEN 43616 AND 43626
GROUP BY ID_producto
ORDER BY ID_producto ASC

SELECT nombre_producto, stock AS "stock original" ,  T1.stock - T2.ventas AS "Stock_disponible"
FROM Producto T1
INNER JOIN Cantven2 T2 ON T1.ID_producto = T2.ID_producto
WHERE volumen = 275
UNION
SELECT nombre_producto, stock AS "stock original" ,  T1.stock - T2.ventas AS "Stock_disponible"
FROM Producto T1
INNER JOIN Cantven2 T2 ON T1.ID_producto = T2.ID_producto
WHERE volumen = 700

/*
(SELECT nombre_producto, 
from Producto 
WHERE volumen = 275)
UNION
(SELECT nombre_producto
from Producto 
WHERE volumen = 700)
*/


SELECT * 
FROM Producto