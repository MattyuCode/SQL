  create table libros(
  codigo int auto_increment primary key,
  titulo varchar(40) not null,
  -- autor varchar(20) default 'Desconocido'
  autor varchar(20)
 );

 create table socios(
  documento char(8) not null primary key,
  nombre varchar(30),
  domicilio varchar(30)
  );

 create table prestamos(
  documento char(8) not null,
  codigo_libro int unsigned,
  fecha_prestamo date not null,
  fecha_devolucion date,
  primary key (codigo_libro,fecha_prestamo)
 );

 insert into socios values('22333444','Juan Perez','Colon 345'), ('23333444','Luis Lopez','Caseros 940'), ('25333444','Ana Herrero','Sucre 120');
 select * from socios;

insert into libros values(1,'Manual de 2º grado','Molina Manuel'),(25,'Aprenda PHP','Oscar Mendez'),(42,'Martin Fierro','Jose Hernandez');
insert into libros(titulo,autor) values('Aprende a programar en C++','Molina Manuel');
select * from libros;

insert into prestamos values
('22333444',1,'2016-08-10','2016-08-12'),
('22333444',1,'2016-08-15', null),
('25333444',25,'2016-08-10','2016-08-13'),
('25333444',42,'2016-08-10', null),
('25333444',25,'2016-08-15', null),
('30333444',42,'2016-08-02','2016-08-05'),
('25333444',2,'2016-08-02','2016-08-05');

select nombre, titulo,fecha_prestamo from prestamos
join  socios on socios.documento = prestamos.documento
join libros on codigo_libro=codigo;

-- Sin alias
select nombre, titulo, fecha_prestamo from prestamos 
left join socios on prestamos.documento=socios.documento
left join libros on libros.codigo= prestamos.codigo_libro;

-- Con  alias
select so.nombre, li.titulo, pre.fecha_prestamo from prestamos pre
left join socios so on pre.documento=so.documento
left join libros li on li.codigo= pre.codigo_libro;

select pro.nombre, if(count(p.proveedorid) > 0, 'SI', 'NO') as hay_datos from proveedor as pro left join productos as p 
on pro.id=p.proveedorid group by pro.nombre;


















