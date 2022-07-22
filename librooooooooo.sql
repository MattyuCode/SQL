-- create database libromysql;
-- use libromysql;

create table customer(
   id int not null auto_increment  primary key,
   primer_nombre varchar(50),
   apellido varchar(50)
);
insert into customer(primer_nombre, apellido) values ('Ynonne', 'Clegg'), ('Jonny', 'Chaka'), ('Winston', 'Powers'),('Patricia', 'Mankuku');
select * from customer;

create table sales(
   codes int not null auto_increment primary key,
   sales_rep int default null, 
   customer int default null,
   valor int default null
);
insert into sales(sales_rep, customer, valor) values (1,1,2000), (4,3,250),(2,3,500),(1,4,450),(3,1,3800),(1,2,500);
select * from sales;

CREATE TABLE sales_rep ( 
numero int auto_increment primary key default NULL, 
nombre varchar (40) default NULL, 
apellido varchar (30) default NULL, 
comision tinyint (4) default NULL, 
fecha date default NULL, 
cumpleanio date default NULL 
);
INSERT INTO sales_rep(nombre,apellido,comision,fecha,cumpleanio) VALUES ('Rive', 'Sol' , 10, '2000-02-15' , '1976-03-18'),
('Gordimer','juan' , 15, '1998-07-09' , '1958-11-30'),
('Serote' , 'Mike' , 10, '2001-05-14', '1971-06-18'),
('Rive', 'Mongane', 10, '2002-11-23 ' , '1982-01-04');
INSERT INTO sales_rep(nombre,apellido,comision,fecha,cumpleanio) values ('Jomo', 'Ignesund', 10, '2002-11-29', now());
select * from sales_rep;

CREATE TABLE old_customer(
id int not null, 
primer_nombre varchar(30), 
apellido varchar (40) 
) ; 
INSERT INTO old_customer VALUES (5432, 'Thulani' , 'Salie') , (2342, 'Shahiem', 'Papo'); 
select * from old_customer;
-- ---------------------------------------------------------------------------->
select distinct nombre,apellido from sales_rep inner join sales on sales_rep=numero;
select sr.nombre, sr.apellido from sales_rep  sr left join sales on  sales_rep=numero where sales_rep is null;

select old_customer.* from old_customer union 
select customer.* from customer; 

select old_customer.* from old_customer union 
(select customer.* from customer order by primer_nombre,apellido);

select id as Listados_Completos from customer union all select codes from sales ;
SELECT id, apellido FROM customer UNION ALL SELECT valor, sales_rep FROM sales;
select nombre, apellido from sales_rep where sales_rep.numero in (select codes from sales where valor>1000);
SELECT nombre, apellido FROM sales_rep WHERE sales_rep.numero IN (1); 
SELECT distinct nombre, apellido FROM sales_rep, sales where sales.codes=sales_rep.numero and valor>1000;
select nombre, apellido from sales_rep where numero not in (select	distinct codes from sales);




select * from customer;
select * from old_customer;
select * from sales;
select * from sales_rep;





