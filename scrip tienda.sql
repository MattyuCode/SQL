create table tienda(
id_tienda int not null auto_increment primary key,
nombre_tienda varchar(100),
direccion varchar(100),
telefono varchar(15),
nit int 
);

create table clientes(
id_cliente int not null auto_increment primary  key,
nombres varchar(50),
apellidos varchar(50),
telefono varchar(15),
fecha_nacimiento date,
direccion varchar(150),
id_tienda int not null,
foreign key (id_tienda) references tienda(id_tienda)
);


create table factura(
id_factura int not null auto_increment primary key,
numero_factura varchar(56),
total_venta double,
fecha_registro date,
id_cliente int not null,
id_tienda int not null,
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_tienda) references tienda(id_tienda)
);

create table empleado(
id_empleado int not null primary key,
nombres varchar(50),
apellidos varchar(50),
telefono varchar(15),
fecha_nacimiento date,
fecha_comienzo date,
sueldo double,
cargo varchar(100),
direccion varchar(150),
cui varchar(15),
id_tienda int not null,
foreign key (id_tienda) references tienda(id_tienda)
);


create table categoria(
id_categoria int not null auto_increment primary key,
nombre varchar(150)
);

create table productos(
id_producto int not null auto_increment primary key,
nombre varchar(150),
precio double,
fecha_vencimiento date,
descripcion varchar(200),
id_categoria int not null,
foreign key (id_categoria) references categoria(id_categoria)
);

create table detalleFactura(
id_detalleFactura int not null auto_increment primary key,
cantidad double,
detalle varchar(300),
precio_unitario double,
total double,
id_producto int not null,
id_factura int not null
);


--   CATEGORIA---------------------------------->

insert into categoria(nombre) values
    -- (1000, 'Bebidas');
	('Frutas y verduras'),
	('Dulceria'),
	('Panaderia'),
	('Comida'),
	('Papeleria'),
	('Higiene Personal'),
	('Herramientas');
    select * from categoria;


--  TIENDA -------------------------------------->
insert into tienda(nombre_tienda, direccion, telefono, nit) values
-- (100,'micelanias','zona 12 de Ciudad Guatemala','16542312',	99171716);
('Tienda 24', 'solola, Guatemala', '55926957', 84249728),
('Super',	'huehuetenango Guatemala',	'55684475', 65718452);

select * from tienda;


-- EMPLEADOS -------------------------------------------->
insert into empleado(nombres,apellidos,telefono,fecha_nacimiento,fecha_comienzo,sueldo,cargo,direccion,cui,id_tienda) values
('Jeronimo','García',  56456654, '1982-04-05',  '2002-09-28', 3200.00, 'Administrador', 'Zona 1 San Marcos Guatemala', '3266970151318', 100),
('Estefania','Giménez', 354545484, '1992-03-25',  now(), 3200.00, 'Gerente', '	Colonia 12 Zona 8 Ciudad Guatemala', '8944697151318', 100),
('Guillermo','Pérez',  655465154, '1985-03-06',  '2005-06-26', 45000.00, 'Repartidor', 'San Soloma, Huehuetenango Guatemala', '2669468451318', 100),
('Eliana','Soriano',  545468484, '1989-02-14',  '2003-05-17', 320.00, 'Repartidor', 'Acatenango Chimaltenango Guatemala', '3268780151318', 100),
('Jose','Gutierrez',  546587844, '1987-12-06',  '2005-10-10', 320.00, 'Conserge', 'El Progreso Guatemala', '1546690151318', 100),
('Marcela','Reina',  4848384574, '1988-07-07',  now(), 1500.00, 'Conserge', 'Quiche Guatemala', '3248470151318', 100),
('Daniela','Ramirez',  55548489, '1988-06-06',  '2010-10-14', 30000.00, 'Tecnico', 	'Solola Guatemala', '3745970151318', 101);



-- -------- CLIENTES -------------------------------------------->

insert into clientes(nombres,apellidos,telefono,fecha_nacimiento,direccion,id_tienda) values
('Adriana Carolina','Hernandez Monterroza','2449735','1937-10-27','Ciudad Guatemala','100'),
('Adriana Marcela','Rey Sanchez','8752055','1951-06-26','Ciudad Guatemala','100'),
('Adriana Marcela','Rey Sanchez','5257836','1952-10-16','Baja Verapaz','101'),
('Alejandro','Abondano Acevedo','6415953','1954-09-30','Chimaltenango','100'),
('Alexander','Carvajal Vargas','7691954','1956-09-20','Chiquimula','100'),
('Andrea Catalina','Acero Caro','8237121','1957-06-26','Peten','102'),
('Andrea Liliana','Cruz Garcia','5266339','1959-02-15','El Progreso','102'),
('Andres Felipe','Villa Monroy','2784852','1959-05-19','El Quiche','102'),
('Angela Patricia','Mahecha Piñeros','7695601','1959-10-07','El Quiche','100'),
('Angelica Lisseth','Blanco Concha','7656030','1960-07-19','Huehuetenango','100'),
('Angelica Maria','Rocha Garcia','3587706','1962-06-14','Izabal','101'),
('Angie Tatiana','Fernández Martínez','3148335','1963-10-15','Jalapa','101'),
('Brigite','Polanco Ruiz','7343414','1963-11-07','Jutiapa','100'),
('Camilo','Villamizar Aristizabal','7367678','1963-12-05','Quetzaltenango','101'),
('Camilo','Rodríguez Botero','7340709','1964-02-05','Retalhuleu','100'),
('Camilo Alberto','Cortés Montejo','7583278','1964-10-08','Sacatepequez','102'),
('Camilo Enrique','Gomez Rodriguez','8513050','1965-08-31','San Marcos','101'),
('Carlos Andrés','Polo Castellanos','7755407','1965-11-15','San Marcos','100'),
('Carlos Didier','Castaño Contreras','5418356','1967-03-08','Solola','101'),
('Carlos Felipe','Mogollón Pachón','8392536','1967-06-30','Suchitepequez','102'),
('Carol Ruchina','Gomez Gianine','5590633','1967-07-21','Suchitepequez','102'),
('Carol Ruchina','Gomez Gianine','7439909','1967-12-11','Suchitepequez','101'),
('Carolina','Pintor Pinzon','44168784','1968-11-08','Solola','101');

-- -------------------PRODUCTOS----------------------------------------------------->

insert into productos(nombre,precio,fecha_vencimiento,descripcion,id_categoria) values
('Leche',20.2,'2022-05-22','Importado de Mexico',1000),
('Coca cola',1.5,'2023-08-18','Hecho en Honduras',1000),
('Raptor',5,'2023-08-18','Hecho en Honduras',1000),
('Mirinda',3.5,'2022-03-26','Hecho en Guatemala',1000),
('Donas',5,'2022-02-14','null',1003),
('Goma de mascar',1.5,'2023-01-13','Hecho en Guatemala',1002),
('Huevo',30,'2022-11-05','Importado de EE.UU',1004),
('Agua Natural',4.5,'2022-04-12','Importado de EE.UU',1000),
('Tomates',3.6,'2022-09-20','Hecho en Guatemala',1001),
('Cepillo dental',3,'null','null',1006),
('martillo',20,'null','Importado de Mexico',1007),
('clavo',18,'null','Importado de Mexico',1007),
('Jabon',6.5,'null','Importado de Mexico',1006),
('Colagate',4.5,'2023-08-18','null',1006),
('Aciete',4.5,'2021-05-02','Hecho en Guatemala',1004),
('Arroz',5,'null','Hecho en Guatemala',1004),
('Jugo',3.5,'2022-08-05','null',1000),
('Plumas',1.5,'null','null',1005),
('Cuadernos',1.5,'null','Hecho en Guatemala',1005),
('Lapiceros',1.5,'null','Hecho en Guatemala',1005),
('Borradores',0.5,'null','Hecho en Brasil',1005);

-- -------------------FACTURA-------------------------------------->

insert into factura(numero_factura,total_venta,fecha_registro,id_cliente,id_tienda) values
('002022-1', 67.2,'2021-05-02',2,101),
('002022-2', 452.5,'2001-06-12',1,100),
('002022-3', 548,'2019-04-08',1,100),
('002022-4', 550.5,'2020-06-25',2,100),
('002022-5', 150.5,'2021-03-21',5,101),
('002022-6', 12.25,'2021-03-12',8,100),
('002022-7', 24.4,'2021-03-03',4,102),
('002022-8', 453.5,'2011-08-24',2,102),
('002022-9', 125.25,'2021-03-25',1,100);

-- -----------------------------------DETALLE FACTURA---------------------------------------->
insert into detallefactura(cantidad,detalle, precio_unitario,total, id_producto,id_factura) values
(4, 'adfefdafeafdfe', 4 ,450.5 ,1,1),
(5, 'fererewr', 42 ,5022 ,2,2),
(74, 'et2454', 14 ,5054 ,5,5),
(6, 'fwtrwv5v4', 44 ,555 ,4,4),
(1, 'adafdfe', 14 ,482 ,4,4),
(8, 'ptrwtre', 24 ,4105 ,2,1),
(1, 'tuyutyury', 64 ,1500 ,3,3),
(8, 'hetw4b5', 194 ,153 ,2,2),
(4, 'luyryuyur', 33 ,34 ,5,5);


































































































































