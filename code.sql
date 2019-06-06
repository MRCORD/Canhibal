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

INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(1, 'Nikita Megan Zurowski', 'nikitazurowski@cmail.carleton.ca', '900000000', 'Jr. Sanchez Cerro 1111');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(2, 'Sydney Mariah Kennedy', 'sydneykennedy@cmail.carleton.ca', '900000001', 'Jr. Sanchez Cerro 2222');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(3, 'Tycho Pulles', 't.pulles@student.maastrichtuniversity.nl', '900000002', 'Jr. Sanchez Cerro 3333');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(4, 'Bowien Dusseljee', 'bowien99@gmail.com', '900000003', 'Jr. Sanchez Cerro 4444');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(5, 'Kaï Fraussen', 'k.fraussen@student.maastrichtuniversity.nl', '900000005', 'Jr. Sanchez Cerro 5555');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(6, 'Morris Roman Colenbrander', '16088328@student.hhs.nl', '900000006', 'Jr. Sanchez Cerro 6666');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(7, 'Natalia Laban', 'natalia.laban@gmail.com', '900000007', 'Jr. Sanchez Cerro 7777');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(8, 'Chiiko Tajima', 'chicopmf@gmail.com', '900000008', 'Jr. Sanchez Cerro 8888');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(9, 'Myrthe Bultman', 'm.bultman@student.maastrichtuniversity.nl', '990000009', 'Jr. Sanchez Cerro 9999');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(10, 'Kris Marrier', 'kris@gmail.com', '900000009', '228 Runamuck Pl #2808');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(11, 'Minna Amigon', 'minna_amigon@yahoo.com', '900000010', '2371 Jerrold Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(12, 'Abel Maclead', 'amaclead@gmail.com', '900000011', '37275 St  Rt 17m M');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(13, 'Kiley Caldarera', 'kiley.caldarera@aol.com', '900000012', '25 E 75th St #69');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(14, 'Graciela Ruta', 'gruta@cox.net', '900000013', '98 Connecticut Ave Nw');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(15, 'Cammy Albares', 'calbares@gmail.com', '900000014', '56 E Morehead St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(16, 'Mattie Poquette', 'mattie@aol.com', '900000015', '73 State Road 434 E');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(17, 'Meaghan Garufi', 'meaghan@hotmail.com', '900000016', '69734 E Carrillo St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(18, 'Gladys Rim', 'gladys.rim@rim.org', '900000017', '322 New Horizon Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(19, 'Yuki Whobrey', 'yuki_whobrey@aol.com', '900000018', '1 State Route 27');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(20, 'Fletcher Flosi', 'fletcher.flosi@yahoo.com', '900000019', '394 Manchester Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(21, 'Bette Nicka', 'bette_nicka@cox.net', '900000020', '6 S 33rd St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(22, 'Veronika Inouye', 'vinouye@aol.com', '900000021', '6 Greenleaf Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(23, 'Willard Kolmetz', 'willard@hotmail.com', '900000022', '618 W Yakima Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(24, 'Maryann Royster', 'mroyster@royster.com', '900000023', '74 S Westgate St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(25, 'Alisha Slusarski', 'alisha@slusarski.com', '900000024', '3273 State St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(26, 'Allene Iturbide', 'allene_iturbide@cox.net', '900000025', '1 Central Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(27, 'Chanel Caudy', 'chanel.caudy@caudy.org', '900000026', '86 Nw 66th St #8673');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(28, 'Ezekiel Chui', 'ezekiel@chui.com', '900000027', '2 Cedar Ave #84');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(29, 'Willow Kusko', 'wkusko@yahoo.com', '900000028', '90991 Thorburn Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(30, 'Bernardo Figeroa', 'bfigeroa@aol.com', '900000029', '386 9th Ave N');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(31, 'Ammie Corrio', 'ammie@corrio.com', '900000030', '74874 Atlantic Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(32, 'Francine Vocelka', 'francine_vocelka@vocelka.com', '900000031', '366 South Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(33, 'Ernie Stenseth', 'ernie_stenseth@aol.com', '900000032', '45 E Liberty St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(34, 'Albina Glick', 'albina@glick.com', '900000033', '4 Ralph Ct');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(35, 'Alishia Sergi', 'asergi@gmail.com', '900000034', '2742 Distribution Way');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(36, 'Solange Shinko', 'solange@shinko.com', '900000035', '426 Wolf St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(37, 'Jose Stockham', 'jose@yahoo.com', '900000036', '128 Bransten Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(38, 'Rozella Ostrosky', 'rozella.ostrosky@ostrosky.com', '900000037', '17 Morena Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(39, 'Valentine Gillian', 'valentine_gillian@gmail.com', '900000038', '775 W 17th St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(40, 'Kati Rulapaugh', 'kati.rulapaugh@hotmail.com', '900000039', '6980 Dorsett Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(41, 'Youlanda Schemmer', 'youlanda@aol.com', '900000040', '2881 Lewis Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(42, 'Dyan Oldroyd', 'doldroyd@aol.com', '900000041', '7219 Woodfield Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(43, 'Roxane Campain', 'roxane@hotmail.com', '900000042', '1048 Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(44, 'Lavera Perin', 'lperin@perin.org', '900000043', '678 3rd Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(45, 'Erick Ferencz', 'erick.ferencz@aol.com', '900000044', '20 S Babcock St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(46, 'Fatima Saylors', 'fsaylors@saylors.org', '900000045', '2 Lighthouse Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(47, 'Jina Briddick', 'jina_briddick@briddick.com', '900000046', '38938 Park Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(48, 'Kanisha Waycott', 'kanisha_waycott@yahoo.com', '900000047', '5 Tomahawk Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(49, 'Emerson Bowley', 'emerson.bowley@bowley.org', '900000048', '762 S Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(50, 'Blair Malet', 'bmalet@yahoo.com', '900000049', '209 Decker Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(51, 'Brock Bolognia', 'bbolognia@yahoo.com', '900000050', '4486 W O St #1');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(52, 'Lorrie Nestle', 'lnestle@hotmail.com', '900000051', '39 S 7th St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(53, 'Sabra Uyetake', 'sabra@uyetake.org', '900000052', '98839 Hawthorne Blvd #6101');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(54, 'Marjory Mastella', 'mmastella@mastella.com', '900000053', '71 San Mateo Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(55, 'Karl Klonowski', 'karl_klonowski@yahoo.com', '900000054', '76 Brooks St #9');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(56, 'Tonette Wenner', 'twenner@aol.com', '900000055', '4545 Courthouse Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(57, 'Amber Monarrez', 'amber_monarrez@monarrez.org', '900000056', '14288 Foster Ave #4121');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(58, 'Shenika Seewald', 'shenika@gmail.com', '900000057', '4 Otis St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(59, 'Delmy Ahle', 'delmy.ahle@hotmail.com', '900000058', '65895 S 16th St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(60, 'Deeanna Juhas', 'deeanna_juhas@gmail.com', '900000059', '14302 Pennsylvania Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(61, 'Blondell Pugh', 'bpugh@aol.com', '900000060', '201 Hawk Ct');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(62, 'Jamal Vanausdal', 'jamal@vanausdal.org', '900000061', '53075 Sw 152nd Ter #615');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(63, 'Cecily Hollack', 'cecily@hollack.org', '900000062', '59 N Groesbeck Hwy');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(64, 'Carmelina Lindall', 'carmelina_lindall@lindall.com', '900000063', '2664 Lewis Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(65, 'Maurine Yglesias', 'maurine_yglesias@yglesias.com', '900000064', '59 Shady Ln #53');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(66, 'Tawna Buvens', 'tawna@gmail.com', '900000065', '3305 Nabell Ave #679');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(67, 'Penney Weight', 'penney_weight@aol.com', '900000066', '18 Fountain St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(68, 'Elly Morocco', 'elly_morocco@gmail.com', '900000067', '7 W 32nd St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(69, 'Ilene Eroman', 'ilene.eroman@hotmail.com', '900000068', '2853 S Central Expy');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(70, 'Vallie Mondella', 'vmondella@mondella.com', '900000069', '74 W College St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(71, 'Kallie Blackwood', 'kallie.blackwood@gmail.com', '900000070', '701 S Harrison Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(72, 'Johnetta Abdallah', 'johnetta_abdallah@aol.com', '900000071', '1088 Pinehurst St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(73, 'Bobbye Rhym', 'brhym@rhym.com', '900000072', '30 W 80th St #1995');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(74, 'Micaela Rhymes', 'micaela_rhymes@gmail.com', '900000073', '20932 Hedley St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(75, 'Tamar Hoogland', 'tamar@hotmail.com', '900000074', '2737 Pistorio Rd #9230');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(76, 'Moon Parlato', 'moon@yahoo.com', '900000075', '74989 Brandon St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(77, 'Laurel Reitler', 'laurel_reitler@reitler.com', '900000076', '6 Kains Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(78, 'Delisa Crupi', 'delisa.crupi@crupi.com', '900000077', '47565 W Grand Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(79, 'Viva Toelkes', 'viva.toelkes@gmail.com', '900000078', '4284 Dorigo Ln');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(80, 'Elza Lipke', 'elza@yahoo.com', '900000079', '6794 Lake Dr E');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(81, 'Devorah Chickering', 'devorah@hotmail.com', '900000080', '31 Douglas Blvd #950');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(82, 'Timothy Mulqueen', 'timothy_mulqueen@mulqueen.org', '900000081', '44 W 4th St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(83, 'Arlette Honeywell', 'ahoneywell@honeywell.com', '900000082', '11279 Loytan St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(84, 'Dominque Dickerson', 'dominque.dickerson@dickerson.org', '900000083', '69 Marquette Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(85, 'Lettie Isenhower', 'lettie_isenhower@yahoo.com', '900000084', '70 W Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(86, 'Myra Munns', 'mmunns@cox.net', '900000085', '461 Prospect Pl #316');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(87, 'Stephaine Barfield', 'stephaine@barfield.com', '900000086', '47154 Whipple Ave Nw');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(88, 'Lai Gato', 'lai.gato@gato.org', '900000087', '37 Alabama Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(89, 'Stephen Emigh', 'stephen_emigh@hotmail.com', '900000088', '3777 E Richmond St #900');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(90, 'Tyra Shields', 'tshields@gmail.com', '900000089', '3 Fort Worth Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(91, 'Tammara Wardrip', 'twardrip@cox.net', '900000090', '4800 Black Horse Pike');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(92, 'Cory Gibes', 'cory.gibes@gmail.com', '900000091', '83649 W Belmont Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(93, 'Danica Bruschke', 'danica_bruschke@gmail.com', '900000092', '840 15th Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(94, 'Wilda Giguere', 'wilda@cox.net', '900000093', '1747 Calle Amanecer #2');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(95, 'Elvera Benimadho', 'elvera.benimadho@cox.net', '900000094', '99385 Charity St #840');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(96, 'Carma Vanheusen', 'carma@cox.net', '900000095', '68556 Central Hwy');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(97, 'Malinda Hochard', 'malinda.hochard@yahoo.com', '900000096', '55 Riverside Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(98, 'Natalie Fern', 'natalie.fern@hotmail.com', '900000097', '7140 University Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(99, 'Lisha Centini', 'lisha@centini.org', '900000098', '64 5th Ave #1153');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(100, 'Arlene Klusman', 'arlene_klusman@gmail.com', '900000099', '3 Secor Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(101, 'Alease Buemi', 'alease@buemi.com', '900000100', '4 Webbs Chapel Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(102, 'Louisa Cronauer', 'louisa@cronauer.com', '900000101', '524 Louisiana Ave Nw');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(103, 'Angella Cetta', 'angella.cetta@hotmail.com', '900000102', '185 Blackstone Bldge');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(104, 'Cyndy Goldammer', 'cgoldammer@cox.net', '900000103', '170 Wyoming Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(105, 'Rosio Cork', 'rosio.cork@gmail.com', '900000104', '4 10th St W');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(106, 'Celeste Korando', 'ckorando@hotmail.com', '900000105', '7 W Pinhook Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(107, 'Twana Felger', 'twana.felger@felger.org', '900000106', '1 Commerce Way');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(108, 'Estrella Samu', 'estrella@aol.com', '900000107', '64 Lakeview Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(109, 'Donte Kines', 'dkines@hotmail.com', '900000108', '3 Aspen St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(110, 'Tiffiny Steffensmeier', 'tiffiny_steffensmeier@cox.net', '900000109', '32860 Sierra Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(111, 'Edna Miceli', 'emiceli@miceli.org', '900000110', '555 Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(112, 'Sue Kownacki', 'sue@aol.com', '900000111', '2 Se 3rd Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(113, 'Jesusa Shin', 'jshin@shin.com', '900000112', '2239 Shawnee Mission Pky');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(114, 'Rolland Francescon', 'rolland@cox.net', '900000113', '2726 Charcot Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(115, 'Pamella Schmierer', 'pamella.schmierer@schmierer.org', '900000114', '5161 Dorsett Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(116, 'Glory Kulzer', 'gkulzer@kulzer.org', '900000115', '55892 Jacksonville Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(117, 'Shawna Palaspas', 'shawna_palaspas@palaspas.org', '900000116', '5 N Cleveland Massillon Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(118, 'Brandon Callaro', 'brandon_callaro@hotmail.com', '900000117', '7 Benton Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(119, 'Scarlet Cartan', 'scarlet.cartan@yahoo.com', '900000118', '9390 S Howell Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(120, 'Oretha Menter', 'oretha_menter@yahoo.com', '900000119', '8 County Center Dr #647');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(121, 'Ty Smith', 'tsmith@aol.com', '900000120', '4646 Kaahumanu St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(122, 'Xuan Rochin', 'xuan@gmail.com', '900000121', '2 Monroe St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(123, 'Lindsey Dilello', 'lindsey.dilello@hotmail.com', '900000122', '52777 Leaders Heights Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(124, 'Devora Perez', 'devora_perez@perez.org', '900000123', '72868 Blackington Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(125, 'Herman Demesa', 'hdemesa@cox.net', '900000124', '9 Norristown Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(126, 'Rory Papasergi', 'rpapasergi@cox.net', '900000125', '83 County Road 437 #8581');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(127, 'Talia Riopelle', 'talia_riopelle@aol.com', '900000126', '1 N Harlem Ave #9');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(128, 'Van Shire', 'van.shire@shire.com', '900000127', '90131 J St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(129, 'Lucina Lary', 'lucina_lary@cox.net', '900000128', '8597 W National Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(130, 'Bok Isaacs', 'bok.isaacs@aol.com', '900000129', '6 Gilson St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(131, 'Rolande Spickerman', 'rolande.spickerman@spickerman.com', '900000130', '65 W Maple Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(132, 'Howard Paulas', 'hpaulas@gmail.com', '900000131', '866 34th Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(133, 'Kimbery Madarang', 'kimbery_madarang@cox.net', '900000132', '798 Lund Farm Way');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(134, 'Thurman Manno', 'thurman.manno@yahoo.com', '900000133', '9387 Charcot Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(135, 'Becky Mirafuentes', 'becky.mirafuentes@mirafuentes.com', '900000134', '30553 Washington Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(136, 'Beatriz Corrington', 'beatriz@yahoo.com', '900000135', '481 W Lemon St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(137, 'Marti Maybury', 'marti.maybury@yahoo.com', '900000136', '4 Warehouse Point Rd #7');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(138, 'Nieves Gotter', 'nieves_gotter@gmail.com', '900000137', '4940 Pulaski Park Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(139, 'Leatha Hagele', 'lhagele@cox.net', '900000138', '627 Walford Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(140, 'Valentin Klimek', 'vklimek@klimek.org', '900000139', '137 Pioneer Way');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(141, 'Melissa Wiklund', 'melissa@cox.net', '900000140', '61 13 Stoneridge #835');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(142, 'Sheridan Zane', 'sheridan.zane@zane.com', '900000141', '2409 Alabama Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(143, 'Bulah Padilla', 'bulah_padilla@hotmail.com', '900000142', '8927 Vandever Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(144, 'Audra Kohnert', 'audra@kohnert.com', '900000143', '134 Lewis Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(145, 'Daren Weirather', 'dweirather@aol.com', '900000144', '9 N College Ave #3');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(146, 'Fernanda Jillson', 'fjillson@aol.com', '900000145', '60480 Old Us Highway 51');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(147, 'Gearldine Gellinger', 'gearldine_gellinger@gellinger.com', '900000146', '4 Bloomfield Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(148, 'Chau Kitzman', 'chau@gmail.com', '900000147', '429 Tiger Ln');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(149, 'Theola Frey', 'theola_frey@frey.com', '900000148', '54169 N Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(150, 'Cheryl Haroldson', 'cheryl@haroldson.org', '900000149', '92 Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(151, 'Laticia Merced', 'lmerced@gmail.com', '900000150', '72 Mannix Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(152, 'Carissa Batman', 'carissa.batman@yahoo.com', '900000151', '12270 Caton Center Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(153, 'Lezlie Craghead', 'lezlie.craghead@craghead.org', '900000152', '749 W 18th St #45');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(154, 'Ozell Shealy', 'oshealy@hotmail.com', '900000153', '8 Industry Ln');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(155, 'Arminda Parvis', 'arminda@parvis.com', '900000154', '1 Huntwood Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(156, 'Reita Leto', 'reita.leto@gmail.com', '900000155', '55262 N French Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(157, 'Yolando Luczki', 'yolando@cox.net', '900000156', '422 E 21st St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(158, 'Lizette Stem', 'lizette.stem@aol.com', '900000157', '501 N 19th Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(159, 'Gregoria Pawlowicz', 'gpawlowicz@yahoo.com', '900000158', '455 N Main Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(160, 'Carin Deleo', 'cdeleo@deleo.com', '900000159', '1844 Southern Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(161, 'Chantell Maynerich', 'chantell@yahoo.com', '900000160', '2023 Greg St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(162, 'Dierdre Yum', 'dyum@yahoo.com', '900000161', '63381 Jenks Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(163, 'Larae Gudroe', 'larae_gudroe@gmail.com', '900000162', '6651 Municipal Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(164, 'Latrice Tolfree', 'latrice.tolfree@hotmail.com', '900000163', '81 Norris Ave #525');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(165, 'Kerry Theodorov', 'kerry.theodorov@gmail.com', '900000164', '6916 W Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(166, 'Dorthy Hidvegi', 'dhidvegi@yahoo.com', '900000165', '9635 S Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(167, 'Fannie Lungren', 'fannie.lungren@yahoo.com', '900000166', '17 Us Highway 111');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(168, 'Evangelina Radde', 'evangelina@aol.com', '900000167', '992 Civic Center Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(169, 'Novella Degroot', 'novella_degroot@degroot.org', '900000168', '303 N Radcliffe St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(170, 'Clay Hoa', 'choa@hoa.org', '900000169', '73 Saint Ann St #86');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(171, 'Jennifer Fallick', 'jfallick@yahoo.com', '900000170', '44 58th St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(172, 'Irma Wolfgramm', 'irma.wolfgramm@hotmail.com', '900000171', '9745 W Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(173, 'Eun Coody', 'eun@yahoo.com', '900000172', '84 Bloomfield Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(174, 'Sylvia Cousey', 'sylvia_cousey@cousey.org', '900000173', '287 Youngstown Warren Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(175, 'Nana Wrinkles', 'nana@aol.com', '900000174', '6 Van Buren St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(176, 'Layla Springe', 'layla.springe@cox.net', '900000175', '229 N Forty Driv');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(177, 'Joesph Degonia', 'joesph_degonia@degonia.org', '900000176', '2887 Knowlton St #5435');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(178, 'Annabelle Boord', 'annabelle.boord@cox.net', '900000177', '523 Marquette Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(179, 'Stephaine Vinning', 'stephaine@cox.net', '900000178', '3717 Hamann Industrial Pky');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(180, 'Nelida Sawchuk', 'nelida@gmail.com', '900000179', '3 State Route 35 S');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(181, 'Marguerita Hiatt', 'marguerita.hiatt@gmail.com', '900000180', '82 N Highway 67');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(182, 'Carmela Cookey', 'ccookey@cookey.org', '900000181', '9 Murfreesboro Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(183, 'Junita Brideau', 'jbrideau@aol.com', '900000182', '6 S Broadway St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(184, 'Claribel Varriano', 'claribel_varriano@cox.net', '900000183', '6 Harry L Dr #6327');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(185, 'Benton Skursky', 'benton.skursky@aol.com', '900000184', '47939 Porter Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(186, 'Hillary Skulski', 'hillary.skulski@aol.com', '900000185', '9 Wales Rd Ne #914');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(187, 'Merilyn Bayless', 'merilyn_bayless@cox.net', '900000186', '195 13n N');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(188, 'Teri Ennaco', 'tennaco@gmail.com', '900000187', '99 Tank Farm Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(189, 'Merlyn Lawler', 'merlyn_lawler@hotmail.com', '900000188', '4671 Alemany Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(190, 'Georgene Montezuma', 'gmontezuma@cox.net', '900000189', '98 University Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(191, 'Jettie Mconnell', 'jmconnell@hotmail.com', '900000190', '50 E Wacker Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(192, 'Lemuel Latzke', 'lemuel.latzke@gmail.com', '900000191', '70 Euclid Ave #722');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(193, 'Melodie Knipp', 'mknipp@gmail.com', '900000192', '326 E Main St #6496');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(194, 'Candida Corbley', 'candida_corbley@hotmail.com', '900000193', '406 Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(195, 'Karan Karpin', 'karan_karpin@gmail.com', '900000194', '3 Elmwood Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(196, 'Andra Scheyer', 'andra@gmail.com', '900000195', '9 Church St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(197, 'Felicidad Poullion', 'fpoullion@poullion.com', '900000196', '9939 N 14th St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(198, 'Belen Strassner', 'belen_strassner@aol.com', '900000197', '5384 Southwyck Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(199, 'Gracia Melnyk', 'gracia@melnyk.com', '900000198', '97 Airport Loop Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(200, 'Jolanda Hanafan', 'jhanafan@gmail.com', '900000199', '37855 Nolan Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(201, 'Barrett Toyama', 'barrett.toyama@toyama.org', '900000200', '4252 N Washington Ave #9');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(202, 'Helga Fredicks', 'helga_fredicks@yahoo.com', '900000201', '42754 S Ash Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(203, 'Ashlyn Pinilla', 'apinilla@cox.net', '900000202', '703 Beville Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(204, 'Fausto Agramonte', 'fausto_agramonte@yahoo.com', '900000203', '5 Harrison Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(205, 'Ronny Caiafa', 'ronny.caiafa@caiafa.org', '900000204', '73 Southern Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(206, 'Marge Limmel', 'marge@gmail.com', '900000205', '189 Village Park Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(207, 'Norah Waymire', 'norah.waymire@gmail.com', '900000206', '6 Middlegate Rd #106');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(208, 'Aliza Baltimore', 'aliza@aol.com', '900000207', '1128 Delaware St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(209, 'Mozell Pelkowski', 'mpelkowski@pelkowski.org', '900000208', '577 Parade St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(210, 'Viola Bitsuie', 'viola@gmail.com', '900000209', '70 Mechanic St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(211, 'Franklyn Emard', 'femard@emard.com', '900000210', '4379 Highway 116');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(212, 'Willodean Konopacki', 'willodean_konopacki@konopacki.org', '900000211', '55 Hawthorne Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(213, 'Beckie Silvestrini', 'beckie.silvestrini@silvestrini.com', '900000212', '7116 Western Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(214, 'Rebecka Gesick', 'rgesick@gesick.org', '900000213', '2026 N Plankinton Ave #3');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(215, 'Frederica Blunk', 'frederica_blunk@gmail.com', '900000214', '99586 Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(216, 'Glen Bartolet', 'glen_bartolet@hotmail.com', '900000215', '8739 Hudson St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(217, 'Freeman Gochal', 'freeman_gochal@aol.com', '900000216', '383 Gunderman Rd #197');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(218, 'Vincent Meinerding', 'vincent.meinerding@hotmail.com', '900000217', '4441 Point Term Mkt');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(219, 'Rima Bevelacqua', 'rima@cox.net', '900000218', '2972 Lafayette Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(220, 'Glendora Sarbacher', 'gsarbacher@gmail.com', '900000219', '2140 Diamond Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(221, 'Avery Steier', 'avery@cox.net', '900000220', '93 Redmond Rd #492');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(222, 'Cristy Lother', 'cristy@lother.com', '900000221', '3989 Portage Tr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(223, 'Nicolette Brossart', 'nicolette_brossart@brossart.com', '900000222', '1 Midway Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(224, 'Tracey Modzelewski', 'tracey@hotmail.com', '900000223', '77132 Coon Rapids Blvd Nw');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(225, 'Virgina Tegarden', 'virgina_tegarden@tegarden.com', '900000224', '755 Harbor Way');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(226, 'Tiera Frankel', 'tfrankel@aol.com', '900000225', '87 Sierra Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(227, 'Alaine Bergesen', 'alaine_bergesen@cox.net', '900000226', '7667 S Hulen St #42');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(228, 'Earleen Mai', 'earleen_mai@cox.net', '900000227', '75684 S Withlapopka Dr #32');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(229, 'Leonida Gobern', 'leonida@gobern.org', '900000228', '5 Elmwood Park Blvd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(230, 'Ressie Auffrey', 'ressie.auffrey@yahoo.com', '900000229', '23 Palo Alto Sq');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(231, 'Justine Mugnolo', 'jmugnolo@yahoo.com', '900000230', '38062 E Main St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(232, 'Eladia Saulter', 'eladia@saulter.com', '900000231', '3958 S Dupont Hwy #7');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(233, 'Chaya Malvin', 'chaya@malvin.com', '900000232', '560 Civic Center Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(234, 'Gwenn Suffield', 'gwenn_suffield@suffield.org', '900000233', '3270 Dequindre Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(235, 'Salena Karpel', 'skarpel@cox.net', '900000234', '1 Garfield Ave #7');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(236, 'Yoko Fishburne', 'yoko@fishburne.com', '900000235', '9122 Carpenter Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(237, 'Taryn Moyd', 'taryn.moyd@hotmail.com', '900000236', '48 Lenox St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(238, 'Katina Polidori', 'katina_polidori@aol.com', '900000237', '5 Little River Tpke');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(239, 'Rickie Plumer', 'rickie.plumer@aol.com', '900000238', '3 N Groesbeck Hwy');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(240, 'Alex Loader', 'alex@loader.com', '900000239', '37 N Elm St #916');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(241, 'Lashon Vizarro', 'lashon@aol.com', '900000240', '433 Westminster Blvd #590');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(242, 'Lauran Burnard', 'lburnard@burnard.com', '900000241', '66697 Park Pl #3224');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(243, 'Ceola Setter', 'ceola.setter@setter.org', '900000242', '96263 Greenwood Pl');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(244, 'My Rantanen', 'my@hotmail.com', '900000243', '8 Mcarthur Ln');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(245, 'Lorrine Worlds', 'lorrine.worlds@worlds.com', '900000244', '8 Fair Lawn Ave');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(246, 'Peggie Sturiale', 'peggie@cox.net', '900000245', '9 N 14th St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(247, 'Marvel Raymo', 'mraymo@yahoo.com', '900000246', '9 Vanowen St');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(248, 'Daron Dinos', 'daron_dinos@cox.net', '900000247', '18 Waterloo Geneva Rd');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(249, 'An Fritz', 'an_fritz@hotmail.com', '900000248', '506 S Hacienda Dr');
INSERT INTO Cliente(ID_cliente, nombre_cliente, email, telefono, direccion) VALUES(250, 'Portia Stimmel', 'portia.stimmel@aol.com', '900000249', '3732 Sherman Ave');


INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(1, '229889@studenti.unimore.it', '900000500', 'Av. Salaverry 1111', 'Caña del Peru SAC', 'Hasnain Abbas');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(2, '201709501@post.au.dk', '900000501', 'Av. Salaverry 2222', 'Cañito del Peru SAC', 'Emma Li Jiang Vestergaard');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(3, 'celia.aubert@ieseg.fr', '900000502', 'Av. Salaverry 3333', 'Cañazo Peru SAC', 'Sophie Alix');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(4, '2298389@studenti.unimore.it', '900000503', 'Av. Salaverry 4444', 'Frutas del Peru SAC', 'Célia Maëlle Aubert');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(5, 'Salome.Morand@etu.unige.ch', '900000504', 'Av. Salaverry 5555', 'Mercader Peru SAC', 'Salome Patricia Morand');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(6, 'kandexer@mail.uni-mannheim.de', '900000505', 'Av. Salaverry 6666', 'Frutos del Peru SAC', 'Kai Christian Andexer');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(7, 'martin.bompuis@edu.esce.fr', '900000506', 'Av. Salaverry 7777', 'Frutitas Peru SAC', 'Martin Bompuis');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(8, 'glory@yahoo.com', '900000476', '5 E Truman Rd', 'Frutas_mayorista_8', 'Glory Schieler');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(9, 'rasheeda@aol.com', '900000477', '251 Park Ave #979', 'Frutas_mayorista_9', 'Rasheeda Sayaphon');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(10, 'alpha@yahoo.com', '900000478', '43496 Commercial Dr #29', 'Frutas_mayorista_10', 'Alpha Palaia');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(11, 'refugia.jacobos@jacobos.com', '900000479', '2184 Worth St', 'Frutas_mayorista_11', 'Refugia Jacobos');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(12, 'shawnda.yori@yahoo.com', '900000480', '50126 N Plankinton Ave', 'Frutas_mayorista_12', 'Shawnda Yori');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(13, 'mdelasancha@hotmail.com', '900000481', '38773 Gravois Ave', 'Frutas_mayorista_13', 'Mona Delasancha');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(14, 'gilma_liukko@gmail.com', '900000482', '16452 Greenwich St', 'Frutas_mayorista_14', 'Gilma Liukko');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(15, 'jgabisi@hotmail.com', '900000483', '40 Cambridge Ave', 'Frutas_mayorista_15', 'Janey Gabisi');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(16, 'lili.paskin@cox.net', '900000484', '20113 4th Ave E', 'Frutas_mayorista_16', 'Lili Paskin');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(17, 'loren.asar@aol.com', '900000485', '6 Ridgewood Center Dr', 'Frutas_mayorista_17', 'Loren Asar');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(18, 'dorothy@cox.net', '900000486', '469 Outwater Ln', 'Frutas_mayorista_18', 'Dorothy Chesterfield');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(19, 'gail_similton@similton.com', '900000487', '62 Monroe St', 'Frutas_mayorista_19', 'Gail Similton');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(20, 'catalina@hotmail.com', '900000488', '3338 A Lockport Pl #6', 'Frutas_mayorista_20', 'Catalina Tillotson');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(21, 'lawrence.lorens@hotmail.com', '900000489', '9 Hwy', 'Frutas_mayorista_21', 'Lawrence Lorens');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(22, 'carlee.boulter@hotmail.com', '900000490', '8284 Hart St', 'Frutas_mayorista_22', 'Carlee Boulter');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(23, 'tankeny@ankeny.org', '900000491', '5 Washington St #1', 'Frutas_mayorista_23', 'Thaddeus Ankeny');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(24, 'joles@gmail.com', '900000492', '8 S Haven St', 'Frutas_mayorista_24', 'Jovita Oles');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(25, 'alesia_hixenbaugh@hixenbaugh.org', '900000493', '9 Front St', 'Frutas_mayorista_25', 'Alesia Hixenbaugh');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(26, 'lai@gmail.com', '900000494', '1933 Packer Ave #2', 'Frutas_mayorista_26', 'Lai Harabedian');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(27, 'bgillaspie@gillaspie.com', '900000495', '67 Rv Cent', 'Frutas_mayorista_27', 'Brittni Gillaspie');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(28, 'rkampa@kampa.org', '900000496', '2 Sw Nyberg Rd', 'Frutas_mayorista_28', 'Raylene Kampa');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(29, 'flo.bookamer@cox.net', '900000497', '89992 E 15th St', 'Frutas_mayorista_29', 'Flo Bookamer');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(30, 'jbiddy@yahoo.com', '900000498', '61556 W 20th Ave', 'Frutas_mayorista_30', 'Jani Biddy');
INSERT INTO Proveedor(ID_proveedor, email, telefono, direccion, razon_social, nombre_representante) VALUES(31, 'chauncey_motley@aol.com', '900000499', '63 E Aurora Dr', 'Frutas_mayorista_31', 'Chauncey Motley');


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
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(13, 'Cañibal Palta 275 ml', 275, 6.50, 'Cañazo macerado de Palta de 275 ml', 90);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(14, 'Cañibal Palta 700 ml', 700, 22.9, 'Cañazo macerado de Palta de 700 ml', 51);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(15, 'Cañibal Damasco 275 ml', 275, 6.50, 'Cañazo macerado de Damasco de 275 ml', 186);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(16, 'Cañibal Damasco 700 ml', 700, 22.9, 'Cañazo macerado de Damasco de 700 ml', 74);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(17, 'Cañibal Piña 275 ml', 275, 6.50, 'Cañazo macerado de Piña de 275 ml', 182);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(18, 'Cañibal Piña 700 ml', 700, 22.9, 'Cañazo macerado de Piña de 700 ml', 150);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(19, 'Cañibal Arandano 275 ml', 275, 6.50, 'Cañazo macerado de Arandano de 275 ml', 74);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(20, 'Cañibal Arandano 700 ml', 700, 22.9, 'Cañazo macerado de Arandano de 700 ml', 249);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(21, 'Cañibal Platano 275 ml', 275, 6.50, 'Cañazo macerado de Platano de 275 ml', 58);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(22, 'Cañibal Platano 700 ml', 700, 22.9, 'Cañazo macerado de Platano de 700 ml', 195);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(23, 'Cañibal Cereza 275 ml', 275, 6.50, 'Cañazo macerado de Cereza de 275 ml', 142);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(24, 'Cañibal Cereza 700 ml', 700, 22.9, 'Cañazo macerado de Cereza de 700 ml', 280);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(25, 'Cañibal Coco 275 ml', 275, 6.50, 'Cañazo macerado de Coco de 275 ml', 290);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(26, 'Cañibal Coco 700 ml', 700, 22.9, 'Cañazo macerado de Coco de 700 ml', 133);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(27, 'Cañibal Durazno 275 ml', 275, 6.50, 'Cañazo macerado de Durazno de 275 ml', 130);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(28, 'Cañibal Durazno 700 ml', 700, 22.9, 'Cañazo macerado de Durazno de 700 ml', 240);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(29, 'Cañibal Frambuesa 275 ml', 275, 6.50, 'Cañazo macerado de Frambuesa de 275 ml', 188);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(30, 'Cañibal Frambuesa 700 ml', 700, 22.9, 'Cañazo macerado de Frambuesa de 700 ml', 90);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(31, 'Cañibal Fresa 275 ml', 275, 6.50, 'Cañazo macerado de Fresa de 275 ml', 69);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(32, 'Cañibal Fresa 700 ml', 700, 22.9, 'Cañazo macerado de Fresa de 700 ml', 277);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(33, 'Cañibal Granada 275 ml', 275, 6.50, 'Cañazo macerado de Granada de 275 ml', 230);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(34, 'Cañibal Granada 700 ml', 700, 22.9, 'Cañazo macerado de Granada de 700 ml', 204);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(35, 'Cañibal Maracuya 275 ml', 275, 6.50, 'Cañazo macerado de Maracuya de 275 ml', 149);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(36, 'Cañibal Maracuya 700 ml', 700, 22.9, 'Cañazo macerado de Maracuya de 700 ml', 138);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(37, 'Cañibal Manzana 275 ml', 275, 6.50, 'Cañazo macerado de Manzana de 275 ml', 53);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(38, 'Cañibal Manzana 700 ml', 700, 22.9, 'Cañazo macerado de Manzana de 700 ml', 231);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(39, 'Cañibal Limon 275 ml', 275, 6.50, 'Cañazo macerado de Limon de 275 ml', 294);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(40, 'Cañibal Limon 700 ml', 700, 22.9, 'Cañazo macerado de Limon de 700 ml', 252);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(41, 'Cañibal Naranja 275 ml', 275, 6.50, 'Cañazo macerado de Naranja de 275 ml', 204);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(42, 'Cañibal Naranja 700 ml', 700, 22.9, 'Cañazo macerado de Naranja de 700 ml', 298);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(43, 'Cañibal Papaya 275 ml', 275, 6.50, 'Cañazo macerado de Papaya de 275 ml', 61);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(44, 'Cañibal Papaya 700 ml', 700, 22.9, 'Cañazo macerado de Papaya de 700 ml', 265);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(45, 'Cañibal Sandia 275 ml', 275, 6.50, 'Cañazo macerado de Sandia de 275 ml', 112);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(46, 'Cañibal Sandia 700 ml', 700, 22.9, 'Cañazo macerado de Sandia de 700 ml', 148);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(47, 'Cañibal Uva 275 ml', 275, 6.50, 'Cañazo macerado de Uva de 275 ml', 78);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(48, 'Cañibal Uva 700 ml', 700, 22.9, 'Cañazo macerado de Uva de 700 ml', 86);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(49, 'Cañibal Pera 275 ml', 275, 6.50, 'Cañazo macerado de Pera de 275 ml', 146);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(50, 'Cañibal Pera 700 ml', 700, 22.9, 'Cañazo macerado de Pera de 700 ml', 224);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(51, 'Cañibal Zarsamora 275 ml', 275, 6.50, 'Cañazo macerado de Zarsamora de 275 ml', 101);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(52, 'Cañibal Zarsamora 700 ml', 700, 22.9, 'Cañazo macerado de Zarsamora de 700 ml', 249);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(53, 'Cañibal Guanabana 275 ml', 275, 6.50, 'Cañazo macerado de Guanabana de 275 ml', 272);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(54, 'Cañibal Guanabana 700 ml', 700, 22.9, 'Cañazo macerado de Guanabana de 700 ml', 170);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(55, 'Cañibal Tamarindo 275 ml', 275, 6.50, 'Cañazo macerado de Tamarindo de 275 ml', 93);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(56, 'Cañibal Tamarindo 700 ml', 700, 22.9, 'Cañazo macerado de Tamarindo de 700 ml', 162);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(57, 'Cañibal Litchi 275 ml', 275, 6.50, 'Cañazo macerado de Litchi de 275 ml', 119);
INSERT INTO Producto(ID_producto, nombre_producto, volumen, precio, descripcion, stock) VALUES(58, 'Cañibal Litchi 700 ml', 700, 22.9, 'Cañazo macerado de Litchi de 700 ml', 288);


INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(1, 'Cañazo', 1000000, 'ml');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(2, 'Camu Camu', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(3, 'Aguaymanto', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(4, 'Chirimoya', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(5, 'Sauco', 200000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(6, 'Lucuma', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(7, 'Granadilla', 100000, 'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(8, 'Palta' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(9, 'Damasco' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(10, 'Piña' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(11, 'Arandano' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(12, 'Platano' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(13, 'Cereza' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(14, 'Coco' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(15, 'Durazno' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(16, 'Frambuesa' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(17, 'Fresa' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(18, 'Granada' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(19, 'Maracuya' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(20, 'Manzana' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(21, 'Limon' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(22, 'Naranja' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(23, 'Papaya' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(24, 'Sandia' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(25, 'Uva' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(26, 'Pera' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(27, 'Zarsamora' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(28, 'Guanabana' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(29, 'Tamarindo' , 1000000 ,'g');
INSERT INTO Insumo(ID_insumo, nombre_insumo, stock_insumo, medida_unidad) VALUES(30, 'Litchi' , 1000000 ,'g');

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
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(25, 13, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(26, 13, 8);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(27, 14, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(28, 14, 8);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(29, 15, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(30, 15, 9);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(31, 16, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(32, 16, 9);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(33, 17, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(34, 17, 10);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(35, 18, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(36, 18, 10);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(37, 19, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(38, 19, 11);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(39, 20, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(40, 20, 11);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(41, 21, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(42, 21, 12);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(43, 22, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(44, 22, 12);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(45, 23, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(46, 23, 13);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(47, 24, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(48, 24, 13);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(49, 25, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(50, 25, 14);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(51, 26, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(52, 26, 14);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(53, 27, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(54, 27, 15);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(55, 28, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(56, 28, 15);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(57, 29, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(58, 29, 16);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(59, 30, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(60, 30, 16);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(61, 31, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(62, 31, 17);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(63, 32, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(64, 32, 17);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(65, 33, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(66, 33, 18);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(67, 34, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(68, 34, 18);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(69, 35, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(70, 35, 19);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(71, 36, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(72, 36, 19);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(73, 37, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(74, 37, 20);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(75, 38, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(76, 38, 20);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(77, 39, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(78, 39, 21);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(79, 40, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(80, 40, 21);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(81, 41, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(82, 41, 22);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(83, 42, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(84, 42, 22);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(85, 43, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(86, 43, 23);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(87, 44, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(88, 44, 23);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(89, 45, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(90, 45, 24);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(91, 46, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(92, 46, 24);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(93, 47, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(94, 47, 25);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(95, 48, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(96, 48, 25);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(97, 49, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(98, 49, 26);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(99, 50, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(100, 50, 26);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(101, 51, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(102, 51, 27);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(103, 52, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(104, 52, 27);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(105, 53, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(106, 53, 28);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(107, 54, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(108, 54, 28);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(109, 55, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(110, 55, 29);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(111, 56, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(112, 56, 29);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(113, 57, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(114, 57, 30);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(115, 58, 1);
INSERT INTO Convierte(ID_convierte, ID_producto, ID_insumo) VALUES(116, 58, 30);


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
