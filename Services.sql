create table salesrep1(
id int auto_increment primary key,
emplonumero int,
nombre varchar(40),
apellido varchar(30),
comision tinyint,
fecha date,
cumpleanio date
)engine=MyISAM;

create table salesrep2(
id int auto_increment primary key,
emplonumero int,
nombre varchar(40),
apellido varchar(30),
comision tinyint,
fecha date,
cumpleanio date
)engine=MyISAM;

CREATE TABLE salesrep12( 
id INT AUTO_INCREMENT PRIMARY KEY, 
numero INT, 
nombre VARCHAR(30), 
apellido VARCHAR (40) , 
comision TINYINT, 
fecha DATE, 
cumpleanio DATE 
)engine=merge union=(salesrep1,salesrep2) insert_method=last;
/*
create table salesrep1(
id int auto_increment primary key,
emplonumero int (11),
nombre varchar(40),
apellido varchar(30),
comision tinyint(4),
fecha date,
cumpleanio date
); -- type=MyISAM

create table salesrep2(
id int auto_increment primary key,
emplonumero int (11),
nombre varchar(40),
apellido varchar(30),
comision tinyint(4),
fecha date,
cumpleanio date
); -- type=MyISAM

CREATE TABLE salesrep12( 
id int auto_increment primary key,
emplonumero int (11),
nombre varchar(40),
apellido varchar(30),
comision tinyint(4),
fecha date,
cumpleanio date
) TYPE=MERGE  UNION=(salesrepl,salesrep2);*/

INSERT INTO salesrep1 (emplonumero,nombre,apellido,comision,fecha,cumpleanio) VALUES (1, 'Tshwete' , 'Paul' ,15, '1999-01-03', '1970-03-04');
INSERT INTO salesrep2 (emplonumero,nombre,apellido,comision,fecha,cumpleanio) VALUES (2, 'Glober' , 'Peggy' ,12, '2001-11-19', '1956-08-25');

drop table salesrep12;
describe salesrep1;
select * from salesrep12;
select nombre,apellido from salesrep12;
show tables;
update salesrep12 set nombre='Peggy' where nombre='Peggy';






