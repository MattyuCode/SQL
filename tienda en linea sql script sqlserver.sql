 --Tabla categoría
create table categoria(
       id_categoria int primary key identity,
       nombre varchar(50) not null unique,-- nombre unico y no puede llevar otro igual
       descripcion varchar(256) null,
       estado bit default(1)
	   -- estado bit not null //  no tiene que entrar vacio
);
insert into categoria (nombre,descripcion) values ('Cereales','');
select * from categoria;

--Tabla artículo
create table articulo(
       id_articulo int primary key identity,
       id_categoria int not null,
       codigo varchar(50) null,
       nombre varchar(100) not null unique,
       precio_venta decimal not null,
       stock int not null,
       descripcion varchar(300) null,
       estado bit default(1),
       FOREIGN KEY (id_categoria) REFERENCES categoria(id_categoria)
);

--Tabla persona
create table persona(
       id_persona int primary key identity,
       tipo_persona varchar(20) not null,
       nombre varchar(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) not null,
       email varchar(50) not null
);



--Tabla rol
create table rol(
       id_rol int primary key identity,
       nombre varchar(30) not null,
       descripcion varchar(100) null,
       estado bit default(1)
);

--Tabla usuario
create table usuario(
       id_usuario int primary key identity,
       id_rol integer not null,
       nombre varchar(100) not null,
       tipo_documento varchar(20) null,
       num_documento varchar(20) null,
       direccion varchar(70) null,
       telefono varchar(20) not null,
       email varchar(50) not null,
       password varbinary not null,
       estado bit default(1),
       FOREIGN KEY (id_rol) REFERENCES rol (id_rol)
);

--Tabla ingreso
create table ingreso(
       id_ingreso int primary key identity,
	   id_persona int not null,
       id_usuario int not null,
       tipo_comprobante varchar(20) not null,
       serie_comprobante varchar(7) null,
       num_comprobante varchar (10) not null,
       fecha datetime not null,
       impuesto decimal (4,2) not null,
       total float not null,
       estado bit default(1),
       FOREIGN KEY (id_persona) REFERENCES persona (id_persona),
       FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

--Tabla detalle_ingreso
create table detalle_ingreso(
       id_detalle_ingreso int primary key identity,
       id_ingreso int not null,
       id_articulo int not null,
       cantidad int not null,
       precio decimal not null,
       FOREIGN KEY (id_ingreso) REFERENCES ingreso (id_ingreso) ON DELETE CASCADE,
       FOREIGN KEY (id_articulo) REFERENCES articulo (id_articulo)
);


--Tabla venta
create table venta(
       id_venta int primary key identity,
       id_cliente int not null,
       id_usuario int not null,
       tipo_comprobante varchar(20) not null,
       serie_comprobante varchar(7) null,
       num_comprobante varchar (10) not null,
       fecha_hora datetime not null,
       impuesto decimal not null,
       total decimal not null,
       estado bit default(1),
       FOREIGN KEY (id_cliente) REFERENCES persona (id_persona),
       FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
);

--Tabla detalle_venta
create table detalle_venta(
       id_detalle_venta int primary key identity,
       id_venta int not null,
       id_articulo int not null,
       cantidad int not null,
       precio decimal not null,
       descuento decimal not null,
       FOREIGN KEY (id_venta) REFERENCES venta (id_venta) ON DELETE CASCADE,
       FOREIGN KEY (id_articulo) REFERENCES articulo (id_articulo)
);
