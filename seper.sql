use super;
create table categoria(
id_categoria int auto_increment primary key,
nombre varchar(1000)
);
insert into categoria(nombre) values('Frutas y verduras'),('Dulceria'),('Panaderia'),('Papeleria');
select * from categoria;
create table productos(
id_producto int not null auto_increment primary key,
nombre varchar(1000),
precio float,
categoria int not null,
FOREIGN KEY (categoria) REFERENCES categoria(id_categoria)
);

create table factura(
id_factura int not null,
fecha date,
id_producto int not null,
foreign key (id_producto)  REFERENCES  productos(id_producto)
);
insert into factura values(12, now(), 2);
select * from factura;


insert into productos(nombre,precio,categoria) values('Leche',20.2,1000),('Refresco', 14.1,1000),('Donas',8.00,1004);
insert into productos(nombre,precio,categoria) values('Gomas de mascar',20.2,1003),('Agua natural',8.1,1000),('Pure',6.10,1001)
,('Juevos',1.5,1001),('Tomates',20.1,1002),('Manzanas',45.50,1002),('Aceite',20.1,1001),('Paletas',2.1,1003),('Lechuga',14.10,1002),('Aceite de cocina',20.10,1001),('Arroz',20.10,1001),('Jugo',14.1,1000),('Plunas',5.1,1005);
select * from productos;
select * from categoria;

select cat.nombre, cat.id_categoria, pro.nombre, pro.categoria from productos pro
inner join categoria cat on pro.categoria=cat.id_categoria;
select pro.nombre as 'Nombre del producto', pro.categoria as 'Numero de categoria', cat.nombre as 'Nombre de categoria' from productos pro
inner join categoria cat on pro.categoria=cat.id_categoria;


-- select factura.*, productos.*, categoria.*  from factura
select productos.nombre as 'Nombre del producto', productos.precio, factura.fecha, categoria.nombre as 'nombre de la categoria' from factura
inner join productos on factura.id_producto= productos.id_producto
inner join categoria on productos.categoria=categoria.id_categoria;

