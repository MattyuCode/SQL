-- crear diagrama https://www.youtube.com/watch?v=28-XRzjpZE4
-- https://www.youtube.com/watch?v=tuAiV_YRGY0&list=PLl5otA5a4PtwB1Bv-3__90438-TN8Qaey&index=8

create database despensa;
use despensa;

create table cliente(
id_cliente int not null primary key,
nombre varchar(50),
apellido varchar(80),
edad int not null,
direccion varchar(100)
);
select * from cliente;
insert into cliente values(1,'Jose antonio', 'Alvarez sanches', 45,'San Mateo'),(2, 'Ana', 'Lopez', 24,'Barillas');


create table vendedor(
id_vendedor int not null primary key,
nombres varchar(50),
apellidos varchar(80),
cui varchar (20),
celular varchar(15),
direccion varchar(100)
);
select * from vendedor;

create table producto(
id_producto int not null primary key,
nombre_producto varchar(50),
precio_venta double,
stockMinimo varchar(50),
stockActual varchar(50),
codigoBarra varchar(50)
);
select * from producto;


create table factura(
id_factura int not null primary key,
numero_factura varchar(50),
id_vendedor int not null,
id_cliente int not null,
total_venta double,
fecha_registro date,
foreign key (id_vendedor) references vendedor(id_vendedor),
foreign key (id_cliente) references cliente(id_cliente)
);
select*from factura;

create table detalleFactura(
id_datalle int not null primary key,
id_factura int not null,
id_producto int not null,
precio_venta int not null,
cantidad int not null,
foreign key (id_factura) references factura(id_factura),
foreign key (id_producto) references producto(id_producto)
);
select * from detalleFactura;









