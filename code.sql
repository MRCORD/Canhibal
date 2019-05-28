CREATE TABLE Cliente (
ID_cliente int NOT NULL,
nombre_cliente varchar(100) NOT NULL,
email varchar(100) UNIQUE,
telefono varchar(9) UNIQUE,
direccion varchar(100) NOT NULL);

CREATE TABLE Orden(
ID_orden int NOT NULL,
ID_cliente int NOT NULL,
fecha datetime NOT NULL DEFAULT GETDATE(),
importe float NOT NULL);

CREATE TABLE Incluye(
ID_incluye int NOT NULL,
ID_orden int NOT NULL,
ID_producto int NOT NULL,
cantidad int NOT NULL,
monto float NOT NULL);

CREATE TABLE Producto(
ID_producto int NOT NULL,
nombre_producto varchar(100) NOT NULL,
volumen float NOT NULL,
precio float NOT NULL,
descripcion varchar(100) NOT NULL,
stock int NOT NULL);

CREATE TABLE Convierte(
ID_convierte int NOT NULL,
ID_producto int NOT NULL,
ID_insumo int NOT NULL);

CREATE TABLE Insumo(
ID_insumo int NOT NULL,
nombre_insumo varchar(100) NOT NULL,
stock_insumo float NOT NULL,
medida_unidad varchar(10) NOT NULL);

CREATE TABLE Provee(
ID_provee int NOT NULL,
ID_insumo int NOT NULL,
ID_proveedor int NOT NULL);


CREATE TABLE Proveedor(
ID_proveedor int NOT NULL,
email varchar(100) UNIQUE,
telefono varchar(9) UNIQUE,
direccion varchar(100) NOT NULL,
razon_social varchar(100) NOT NULL,
nombre_representante varchar(100) NOT NULL);

/*PRIMARY keys*/

ALTER TABLE Cliente ADD CONSTRAINT PK_cliente PRIMARY KEY(ID_cliente);
ALTER TABLE Orden ADD CONSTRAINT PK_orden PRIMARY KEY(ID_orden);
ALTER TABLE Incluye ADD CONSTRAINT PK_incluye PRIMARY KEY(ID_incluye);
ALTER TABLE Producto ADD CONSTRAINT PK_producto PRIMARY KEY(ID_producto);
ALTER TABLE Convierte ADD CONSTRAINT PK_convierte  PRIMARY KEY(ID_convierte);
ALTER TABLE Insumo ADD CONSTRAINT PK_insumo PRIMARY KEY(ID_insumo);
ALTER TABLE Provee ADD CONSTRAINT PK_provee PRIMARY KEY(ID_provee);
ALTER TABLE Proveedor ADD CONSTRAINT PK_proveedor PRIMARY KEY(ID_proveedor);

/*Relaciones*/
ALTER TABLE Orden ADD CONSTRAINT FK_orden_cliente FOREIGN KEY (ID_cliente) REFERENCES Cliente (ID_cliente);
ALTER TABLE Incluye ADD CONSTRAINT FK_incluye_orden FOREIGN KEY (ID_orden) REFERENCES Orden (ID_orden);
ALTER TABLE Incluye ADD CONSTRAINT FK_incluye_producto FOREIGN KEY (ID_producto) REFERENCES Producto (ID_producto);
ALTER TABLE Convierte ADD CONSTRAINT FK_convierte_producto FOREIGN KEY (ID_producto) REFERENCES Producto (ID_producto);
ALTER TABLE Convierte ADD CONSTRAINT FK_convierte_insumo FOREIGN KEY (ID_insumo) REFERENCES Insumo (ID_insumo);
ALTER TABLE Provee ADD CONSTRAINT FK_provee_insumo FOREIGN KEY (ID_insumo) REFERENCES Insumo (ID_insumo);
ALTER TABLE Provee ADD CONSTRAINT FK_provee_proveedor FOREIGN KEY (ID_proveedor) REFERENCES Proveedor (ID_proveedor);


/*Data*/

INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(1, 'Nikita Megan Zurowski', 'nikitazurowski@cmail.carleton.ca', '991111111', 'Jr. Sanchez Cerro 1111');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(2, 'Sydney Mariah Kennedy', 'sydneykennedy@cmail.carleton.ca', '992222222', 'Jr. Sanchez Cerro 2222');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(3, 'Tycho Pulles', 't.pulles@student.maastrichtuniversity.nl', '99333333', 'Jr. Sanchez Cerro 3333');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(4, 'Bowien Dusseljee', 'bowien99@gmail.com', '994444444', 'Jr. Sanchez Cerro 4444');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(5, 'Kaï Fraussen', 'k.fraussen@student.maastrichtuniversity.nl', '995555555', 'Jr. Sanchez Cerro 5555');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(6, 'Morris Roman Colenbrander', '16088328@student.hhs.nl', '997777777', 'Jr. Sanchez Cerro 6666');

INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(1, '229889@studenti.unimore.it', '999999999', 'Av. Salaverry 1111', 'Caña del Peru SAC', 'Hasnain Abbas');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(2, '201709501@post.au.dk', '988888888', 'Av. Salaverry 2222', 'Cañito del Peru SAC', 'Emma Li Jiang Vestergaard');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(3, 'celia.aubert@ieseg.fr', '977777777', 'Av. Salaverry 3333', 'Cañazo Peru SAC', 'Sophie Alix');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(4, '2298389@studenti.unimore.it', '966666666', 'Av. Salaverry 4444', 'Frutas del Peru SAC', 'Célia Maëlle Aubert');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(5, 'Salome.Morand@etu.unige.ch', '955555555', 'Av. Salaverry 5555', 'Mercader Peru SAC', 'Salome Patricia Morand');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(6, 'kandexer@mail.uni-mannheim.de', '944444444', 'Av. Salaverry 6666', 'Frutos del Peru SAC', 'Kai Christian Andexer');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(7, 'martin.bompuis@edu.esce.fr', '933333333', 'Av. Salaverry 7777', 'Frutitas Peru SAC', 'Martin Bompuis');

INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(1, 'Cañibal Camu Camu 275ml', 275, 6.50, 'Cañazo macerado de Camu Camu de 275ml', 100);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(2, 'Cañibal Camu Camu 700ml', 700, 22.9, 'Cañazo macerado de Camu Camu de 700ml', 70);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(3, 'Cañibal Aguaymanto 275ml', 275, 6.50, 'Cañazo macerado de Aguaymanto de 275ml', 300);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(4, 'Cañibal Aguaymanto 700ml', 700, 22.9, 'Cañazo macerado de Aguaymanto de 700ml', 199);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(5, 'Cañibal Chirimoya 275ml', 275, 6.50, 'Cañazo macerado de Chirimoya de 275ml', 100);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(6, 'Cañibal Chirimoya 700ml', 700, 22.9, 'Cañazo macerado de Chirimoya de 700ml', 50);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(7, 'Cañibal Sauco 275ml', 275, 6.50, 'Cañazo macerado de Sauco de 275ml', 200);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(8, 'Cañibal Sauco 700ml', 700, 22.9, 'Cañazo macerado de Sauco de 700ml', 55);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(9, 'Cañibal Lucuma 275ml', 275, 6.50, 'Cañazo macerado de Lucuma de 275ml', 100);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(10, 'Cañibal Lucuma 700ml', 700, 22.9, 'Cañazo macerado de Lucuma de 700ml', 50);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(11, 'Cañibal Granadilla 275ml', 275, 6.50, 'Cañazo macerado de Granadilla de 275ml', 500);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(12, 'Cañibal Granadilla 700ml', 700, 22.9, 'Cañazo macerado de Granadilla de 700ml', 60);

INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(1, 'Cañazo', 1000000, 'ml');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(2, 'Camu Camu', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(3, 'Aguaymanto', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(4, 'Chirimoya', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(5, 'Sauco', 200000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(6, 'Lucuma', 100000, 'g' );
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(7, 'Granadilla', 100000, 'g');

INSERT INTO Orden(ID_orden, ID_cliente, fecha, importe) VALUES(1, 1, 25/05/19, 39);
INSERT INTO Orden(ID_orden, ID_cliente, fecha, importe) VALUES(2, 2, 25/05/19, 91.6);
INSERT INTO Orden(ID_orden, ID_cliente, fecha, importe) VALUES(3, 3, 25/05/19, 290);
INSERT INTO Orden(ID_orden, ID_cliente, fecha, importe) VALUES(4, 4, 25/05/19, 130);
INSERT INTO Orden(ID_orden, ID_cliente, fecha, importe) VALUES(5, 5, 25/05/19, 325);
INSERT INTO Orden(ID_orden, ID_cliente, fecha, importe) VALUES(6, 1, 25/05/19, 1950);
INSERT INTO Orden(ID_orden, ID_cliente, fecha, importe) VALUES(7, 6, 25/05/19, 91.6);


INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(1, 1, 1, 5, 39);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(2, 2, 6, 2, 45.8);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(3, 2, 4, 2, 45.8);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(4, 3, 10, 10, 290);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(5, 4, 11, 20, 130);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(6, 5, 1, 50, 325);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(7, 6, 1, 50, 325);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(8, 6, 3, 50, 325);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(9, 6, 5, 50, 325);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(10, 6, 7, 50, 325);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(11, 6, 9, 50, 325);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(12, 6, 11, 50, 325);
INSERT INTO Incluye(ID_incluye, ID_orden, ID_producto, cantidad, monto) VALUES(13, 7, 8, 4, 91.6);


INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(1, 1, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(2, 1, 2);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(3, 2, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(4, 2, 2);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(5, 3, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(6, 3, 3);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(7, 4, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(8, 4, 3);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(9, 5, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(10, 5, 4);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(11, 6, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(12, 6, 4);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(13, 7, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(14, 7, 5);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(15, 8, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(16, 8, 5);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(17, 9, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(18, 9, 6);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(19, 10, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(20, 10, 6);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(21, 11, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(22, 11, 7);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(23, 12, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(24, 12, 7);


INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(1,1,1);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(2,1,2);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(3,1,3);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(4,2,4);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(5,2,5);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(6,3,6);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(7,3,7);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(8,4,4);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(9,4,5);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(10,5,6);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(11,5,7);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(12,6,4);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(13,6,5);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(14,7,6);
INSERT INTO Provee(ID_provee, ID_insumo, ID_proveedor) VALUES(15,7,7);

/*Tables*/
SELECT *
FROM Cliente

SELECT *
FROM Orden

SELECT *
FROM Incluye

SELECT *
FROM Producto

SELECT *
FROM Insumo

SELECT *
FROM Convierte

SELECT *
FROM Provee

SELECT *
FROM Proveedor

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

SELECT 
