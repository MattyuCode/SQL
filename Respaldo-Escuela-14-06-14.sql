Create Database Escuela;
USE Escuela;

CREATE TABLE Alumnos(
	id_alumno int NOT NULL,
	nombre varchar(50) NOT NULL,
	apellidos varchar(50) NOT NULL,
	id_carrera int not null,
    primary key (id_alumno, id_carrera)
);
-- INSERT Alumnos (id_alumno, matricula, nombre, apellidos, mail) VALUES (1, N'gbbyhg', N'david', N'hackro', N'hackroyahoo.com');
insert into alumnos values(1,'David','Hernandez Perez', 2),(2, 'Mario', 'Montejo Iders', 2),(3,'Pedro', 'Silevestre gomez',1),(4,'Jose','Lopez juan',3),
(5,'Mateo','Mendoza', 3);

CREATE TABLE Carrera(
	id_carrera int NOT NULL primary key,
	carrera varchar(50) NOT NULL
);
INSERT Carrera VALUES (1, 'ing.Sistemas'),(2,'Lic.Derecho'),(3,'Lic.Administracion');

CREATE TABLE Datos(
	id_datos int NOT NULL primary key,
	id_alumnos varchar(50) NOT NULL,
	mail varchar(50) NOT NULL,
    edad int not null
);
INSERT Datos VALUES (1,1, 'maria12',22),(2,2,'pedro23', 14),(3,3,'lucas12',21),(4,4,'juana',28);
select * from Datos;
select * from Carrera;
select * from Alumnos;

select alu.nombre as 'Nombre Alumno', alu.apellidos, da.mail, da.edad, ca.carrera from alumnos alu
left join datos da on alu.id_alumno=da.id_alumnos
inner join carrera ca on alu.id_carrera=ca.id_carrera;


















