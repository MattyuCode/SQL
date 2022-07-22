-- https://www.vichaunter.org/desarrollo-web/joins-mysql-bien-explicado-lo-necesitas-saber

CREATE TABLE cliente(
  id_cliente INT  AUTO_INCREMENT primary key,
  nombre VARCHAR(59) not NULL,
  apellido VARCHAR(43),
  fecha_nacimiento DATE not null,
  dpi INT NOT NULL unique
);
insert into cliente(nombre,apellido,fecha_nacimiento,dpi) values ('adfds', 'menqreqeoza', '2005-02-23', 434354);
select * from cliente;
CREATE TABLE  factura(
  id_factura INT AUTO_INCREMENT primary key,
  numero_factura INT NOT NULL,
  id_cliente int not null,
  FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente)
);
insert into factura(numero_factura,id_cliente) values (46456546456232, 4);
select * from factura;

create table detalleFactura(
id_detalleFactura int auto_increment primary key,
id_factura int not null,
id_producto int not null,
foreign key (id_producto) references producto (id_producto),
foreign key (id_factura) references factura(id_factura)
);
insert into detallefactura(id_factura,id_producto) values (2,1);
select * from detallefactura;


CREATE TABLE  producto (
  id_producto int auto_increment primary key,
  nombre VARCHAR(39) not null,
  precio DOUBLE NOT NULL
);
insert into producto(nombre,precio) values ('adsfdsfas',23.4);
select*from producto;

select c.nombre as 'Nombre cliente',c.apellido,c.fecha_nacimiento , p.nombre as 'Nombre producto', p.precio, dt.id_producto, f.numero_factura, dt.id_factura 
from producto p
inner join detallefactura  dt on p.id_producto = dt.id_producto
inner join factura f on dt.id_factura = f.id_factura
inner join cliente c on f.id_cliente = c.id_cliente;

select f.numero_factura, p.nombre as 'Nombre producto', p.precio, c.nombre as 'Nombre cliente',c.apellido,c.fecha_nacimiento 
 from factura f inner join detallefactura on f.id_factura = detallefactura.id_factura
 inner join producto p on detallefactura.id_producto = p.id_producto
 inner join cliente c on  f.id_cliente = c.id_cliente;
 
