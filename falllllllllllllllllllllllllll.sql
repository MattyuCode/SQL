/* SELECT 4- (2/4) ; 
 SELECT 1 AND 0;
 SELECT '4200' = '4200.0 '; 
  SELECT 'abc' = 'ABC';
SELECT NULL<=>0; 
 SELECT 4.5 BETWEEN 4 and 5; 
SELECT NULL IS NULL;
SELECT NULL IS not NULL;
 SELECT 5 BETWEEN 6 and 4;
select 'a' between 'b' and 'c';
SELECT 'abc' < 'b';
*/
/*
CREATE TABLE custo( 
id int (11) default NULL, 
nombre varchar(30) default NULL, 
apellido varchar (40) default NULL 
 );

INSERT INTO custo VALUES (1, 'Yvonne' , 'Cleggl') ; 
INSERT INTO custo VALUES (2, 'Johnny', 'Chaka-Chaka' ) ; 
INSERT INTO custo value (3, 'Winston' , 'Powers' ) ; 
INSERT INTO custo VALUES (4, 'Patricia', 'Mankunku'); 

CREATE TABLE sale( 
codes int (11) default NULL, 
salesrep int (11) default NULL, 
customer int (11) default NULL, 
valor int (11) default NULL 
);

INSERT INTO sale VALUES (1, 1, 1, 2000) ; 
INSERT INTO sale VALUES (2, 4, 3, 250) ; 
INSERT INTO sale VALUES (3, 2, 3, 500) ; 
INSERT INTO sale VALUES (4, 1, 4, 450) ; 
INSERT INTO sale VALUES (5, 3, 1, 3800) ; 
INSERT INTO sale VALUES (6, 1, 2, 500) ; 

CREATE TABLE sales_rep ( 
numero int (11) default NULL, 
nombre varchar (40) default NULL, 
apellido varchar (30) default NULL, 
comision tinyint (4) default NULL, 
fecha date default NULL, 
cumpleanio date default NULL 
);

INSERT INTO sales_rep VALUES (1, 'Rive', 'Sol' , 10, '2000-02-15' , '1976-03-18') ; 
INSERT INTO sales_rep VALUES (2, 'Gordimer','juan' , 15, '1998-07-09' , '1958-11-30') ; 
INSERT INTO sales_rep VALUES (3, 'Serote' , 'Mike' , 10, '2001-05-14', '1971-06-18'); 
INSERT INTO sales_rep VALUES (4, 'Rive', 'Mongane', 10, '2002-11-23 ' , '1982-01-04 ' ) ; 
show tables;
use otro;
select salesrep,customer,valor,nombre,apellido from sale, sales_rep where codes=1 and sales_rep.numero=sale.salesrep;
select * from custo;
select * from sale;
select * from sales_rep;
*/

CREATE TABLE cliente( 
id int (11) default NULL, 
nombre varchar(30) default NULL, 
apellido varchar (40) default NULL  
);

INSERT INTO cliente VALUES (1, 'Yvonne' , 'Cleggl') ; 
INSERT INTO cliente VALUES (2, 'Johnny', 'Chaka-Chaka' ) ; 
INSERT INTO cliente value (3, 'Winston' , 'Powers' ) ; 
INSERT INTO cliente VALUES (4, 'Patricia', 'Mankunku'); 

CREATE TABLE ventas( 
codigo int (11) default NULL, 
repre_ventas int (11) default NULL, 
cliente int (11) default NULL, 
valor int (11) default NULL 
);

INSERT INTO ventas VALUES (1, 1, 1, 2000) ; 
INSERT INTO ventas VALUES (2, 4, 3, 250) ; 
INSERT INTO ventas VALUES (3, 2, 3, 500) ; 
INSERT INTO ventas VALUES (4, 1, 4, 450) ; 
INSERT INTO ventas VALUES (5, 3, 1, 3800) ; 
INSERT INTO ventas VALUES (6, 1, 2, 500) ; 

CREATE TABLE representante_ventas( 
numero int (11) default NULL, 
nombre varchar (40) default NULL, 
apellido varchar (30) default NULL, 
comision tinyint (4) default NULL, 
fecha date default NULL, 
cumpleanio date default NULL 
);
 
INSERT INTO representante_ventas VALUES (1, 'Rive', 'Sol' , 10, '2000-02-15' , '1976-03-18') ; 
INSERT INTO representante_ventas VALUES (2, 'Gordimer','juan' , 15, '1998-07-09' , '1958-11-30') ; 
INSERT INTO representante_ventas VALUES (3, 'Serote' , 'Mike' , 10, '2001-05-14', '1971-06-18'); 
INSERT INTO representante_ventas VALUES (4, 'Rive', 'Mongane', 10, '2002-11-23 ' , '1982-01-04 ' ) ; 
show tables;

use dbm;
select repre_ventas,cliente,valor,nombre,apellido from ventas, representante_ventas where codigo=1 and representante_ventas.numero=ventas.repre_ventas;
select nombre,apellido,valor from cliente,ventas where id=cliente;
select nombre,apellido,valor from cliente inner join ventas on id=cliente;

insert into ventas(codigo,repre_ventas,cliente,valor) values (7,2,null,670);
select nombre,apellido,valor from ventas left join cliente on id=cliente;
SELECT nombre,apellido,valor FROM cliente LEFT JOIN ventas ON id=cliente ; 
select representante_ventas.nombre,representante_ventas.apellido, valor, cliente.nombre,cliente.apellido from ventas left join 
representante_ventas on representante_ventas.numero = ventas.repre_ventas left join cliente on cliente.id = ventas.cliente;

alter table ventas change cliente id int;
SELECT nombre,apellido,valor FROM cliente NATURAL JOIN  ventas;
SELECT nombre,apellido,valor FROM cliente INNER JOIN ventas ON cliente.id=ventas.id; 

select * from cliente;
select * from ventas;
select * from representante_ventas;