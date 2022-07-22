CREATE TABLE roles(
id_rol int auto_increment ,
rol varchar(20),
CONSTRAINT PK_roles PRIMARY KEY (id_rol)
);
INSERT INTO roles(rol) VALUES ('ScrumMaster'), ('ProductOwner'), ('Team'), ('Steakholders'), ('Tester');
select * from roles;

CREATE TABLE pais(
id_pais int auto_increment,
pais varchar(25),
CONSTRAINT PK_pais PRIMARY KEY (id_pais)
);

INSERT INTO pais(pais) VALUES ('El Salvador'),('Guatemala'),('Costa Rica'),('Japon'),('Estados Unidos'), ('Argentina'),('Mexico'),('Uruguay'),('Canada'),('Chile');
select * from pais;

CREATE TABLE personas(
id_persona int auto_increment,
apellido varchar(40) not null,
nombre varchar(40) not null,
sueldo double,
direccion varchar(100),
celular varchar(8),
sexo varchar(1),
nacimiento date,
id_rol int,
id_pais int,
CONSTRAINT PK_persona PRIMARY KEY (id_persona),
CONSTRAINT FK_rol FOREIGN KEY (id_rol)
REFERENCES roles(id_rol),
CONSTRAINT FK2_pais FOREIGN KEY (id_pais)
REFERENCES pais(id_pais)
);
select * from personas;
drop table personas;


INSERT INTO personas(apellido,nombre,sueldo,direccion,celular,sexo,nacimiento,id_rol,id_pais)
VALUES ('Hernandez Mancia','Marielos',958,'San Mateo','67567555','F','1986/7/4',3,4),
       ('Perez Juarez','Joaquin',850,'Pojom','34567564','M','1969/9/2',3,1),
       ('Solis Castro','Eduardo',600,'Santa','12327523','M','1972/3/11',3,1),
       ('Ramos Nieto','Jorge',550,'bulej','34567174','M','1972/10/4',4,1),
       ('Hernandez Carias','Johanna',1800,'centro','34234809','F','1952/3/4',1,1),
       ('Romero Peña','Manuel Alberto',0,'Huehue','34567342','M','1969/12/4',2,1),
       ('Garcia Alvarado','Roxana',1600,'Ocante','34345564','F','1970/4/4',1,1),
       ('Torres Castro','Alfredo',450,'Huehue','34565674','M','1980/2/9',3,5),
       ('Romero Peña','Verenice',400,'San Mateo','34567589','F','1978/3/17',3,1),
       ('Martinez','Evelyn Roxana',340,'Barillas','34556764','F','1972/8/14',3,5),
       ('Siguenza','Eduardo',1120,'Santa','21467564','M','1975/10/9',3,1),
       ('Alas Duran','Martin',1200,'Soloma','34562364','M','1972/3/4',3,1),
       ('Jerez M.','Jose Carlos',589,'Pet','34563352','M','1972/3/6',4,1),
       ('Bolaños Cea','Sandra',244,'Pet','67557564','F','1968/3/4',3,1),
       ('Cuestas D.','Jenny Maria',1089,'Soloma','34567564','F','1972/9/14',3,4);
       
/*select nombre,apellido,direccion,nacimiento,pais.*, rol from personas 
inner join pais on personas.id_pais = pais.id_pais 
inner join roles on personas.id_rol = roles.id_rol;*/
select nombre,apellido,direccion,nacimiento,rol, pais from personas 
inner join pais on personas.id_pais = pais.id_pais 
inner join roles on personas.id_rol = roles.id_rol;

select personas.*, pais from pais left join personas on personas.id_pais = pais.id_pais;
select personas.*, rol from personas right join roles on personas.id_rol = roles.id_rol;
       
           
SELECT nombre,apellido,sueldo,pais FROM personas FULL JOIN personas on id_pais = id_pais;
select nombre,apellido,nacimiento,pais from personas cross join pais where personas.id_pais=pais.id_pais;       
       
       -- https://www.vichaunter.org/desarrollo-web/joins-mysql-bien-explicado-lo-necesitas-saber
       -- https://javifer2.wordpress.com/2019/08/31/inner-join-multiples-tablas/
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       
       