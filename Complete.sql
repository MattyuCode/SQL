use practicas;
create table customer(
   id int auto_increment  primary key,
   primer_nombre varchar(50),
   apellido varchar(50)
);

create table sales(
   codes int auto_increment,
   sales_rep int,
   customer int,
   valor int,
   primary key (codes)
);

insert into customer(primer_nombre, apellido) values ('Ynonne', 'Clegg'), ('Jonny', 'Chaka'), ('Winston', 'Powers'),('Patricia', 'Mankuku');
insert into sales(sales_rep, customer, valor) values (1,1,2000), (4,3,250),(2,3,500),(1,4,450),(3,1,3800),(1,2,500);

SELECT sales_rep,customer,valor,nombre,apellido FROM sales ,sales_rep WHERE codes=1 AND sales_rep.numero=sales.sales_rep; -- Combinacion de dos o mas tablas 
select codes,customer,valor from sales_rep,sales where nombre='Rive' and apellido='Sol ' and sales.sales_rep = sales_rep.numero;
SELECT codes ,customer ,valor FROM sales,  sales_rep WHERE nombre= 'Rive' AND apellido= 'Sol ' AND sales_rep = numero;
select sales.codes, sales.customer, sales.valor from sales_rep, sales where sales_rep.nombre='Rive' 
and sales_rep.apellido='Sol ' and sales.sales_rep = sales_rep.numero;
alter table sales change sales_rep numero int;
alter table sales change numero sales_rep int;
select codes,customer,valor from sales_rep,sales where sales_rep.numero=1 and sales_rep.numero= sales.numero;
select year(now()) - year(cumpleanio) as cumple from sales_rep;
select year(now()) > year(cumpleanio) as cumpleanio from sales_rep where numero=1;
select right(current_date,5), right(cumpleanio,5) from sales_rep;
select apellido, nombre, (year(current_date)- year(cumpleanio)) - (right(current_date,5) < right(cumpleanio,5)) as age from sales_rep;
select sum(valor) from sales;
select avg(valor) from sales;
select sales_rep, sum(valor) from sales group by sales_rep;
select sales_rep, sum(valor) as sum from sales group by sales_rep order by  sum desc;
select sales_rep, count(*) as count from sales group by sales_rep order by count limit 1;
select nombre, apellido, sales_rep, count(*) as count from sales,sales_rep where sales_rep=numero group by sales_rep, nombre,apellido order by count limit 1;


select * from customer;
select * from sales_rep;
select * from sales;
describe customer;
describe sales;
