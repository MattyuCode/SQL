use practicas;
select * from sales_rep where nombre="Rive" and apellido="Sol" or comision > 10 ;
select * from sales_rep where nombre="Serote" and apellido="Mike";
SELECT * FROM sales_rep WHERE nombre LIKE ' Sero% ' ; 
SELECT * FROM sales_rep WHERE nombre LIKE '%e%e' ; 
insert into sales_rep values(4, "Rive", "Mongane", 10);
insert into sales_rep values(4, "Smith", "Mike", 12);
insert into sales_rep values(5, "Mattyu", "web", 8);
select * from sales_rep order  by nombre;
select * from sales_rep order  by nombre,apellido;
select * from sales_rep order  by comision desc;
select * from sales_rep order  by comision asc;
select * from sales_rep order  by comision desc, nombre asc, apellido asc;
select apellido, nombre, comision from sales_rep order  by comision desc limit 1;
select avg(comision)  as comsion from sales_rep;
-- select avg(comision)  as comsion from sales_rep;
select nombre from sales_rep order by nombre;
select count(nombre) as nombre from sales_rep;
select count(*) from sales_rep; -- para buscar y ver el total de todo
SELECT MIN(comision) FROM sales_rep; 
SELECT MAX(comision) from sales_rep; 
SELECT SUM(comision) from sales_rep;
select apellido, nombre, comision + 1 from sales_rep;
DELETE FROM sales_rep WHERE nombre='Smith';
delete from sales_rep where numero = 6;
select * from sales_rep;
UPDATE sales_rep SET comision = 2 WHERE numero=5; 
update sales_rep set nombre="sadfsd" where comision = 12;
alter table sales_rep add fecha date not null;
alter table sales_rep drop fecha;
ALTER TABLE sales_rep ADD ano_nacimiento YEAR not null; 
alter table sales_rep change column ano_nacimiento cumpleanos_nacidos_del_ano year;
alter table sales_rep add valor_mejor int not null;
alter table sales_rep rename cash_flow_specialist; -- cambiar el nombre de la tabla
select * from cash_flow_specialist;
alter table cash_flow_specialist rename to sakes_rep;
describe sales_rep;
select fecha,cumpleanos_nacidos_del_ano from sales_rep;
-- ------------------------------------------------
update sales_rep set fecha = '2000-02-15', cumpleanio = '1976' where numero=1;
UPDATE sales_rep SET fecha = '1998-07-09', cumpleanio='1958' WHERE numero=2; 
UPDATE sales_rep SET fecha = '2001-05-14', cumpleanio='1971' WHERE numero=3 ; 
insert into sales_rep values(5, "Mateo", "web1", 18, '1999-12-05', '2009', 45);
insert into sales_rep values(6, "Mattu", "web2", 08, '2001-01-05', '2007', 05);
delete from sales_rep where fecha = '2000-02-13';
update sales_rep set numero=4 where numero =5 ;
select date_format(fecha, '%m/%/d/%y') from sales_rep where numero = 1;
select date_format(fecha, '%W %M %e %y') FROM sales_rep WHERE numero = 1; 
select now(), current_date( );
select year(cumpleanio) from sales_rep;
select month(cumpleanio), dayofmonth(cumpleanio) from sales_rep;
SELECT nombre,apellido,MONTH (cumpleanio)  AS month ,DAYOFMONTH(cumpleanio) AS day FROM sales_rep  ORDER BY month; 
select concat(apellido, '', nombre) as name, month(cumpleanio) as month, dayofmonth(cumpleanio) as day from sales_rep order by month;
DESCRIBE sales_rep; 

update sales_rep set cumpleanio = '2021-05-03' where numero =1;
update sales_rep set cumpleanio = '2002-04-09' where numero =2 ;
update sales_rep set cumpleanio = '2004-02-01' where numero =3 ;
update sales_rep set cumpleanio = '2005-09-09' where numero =4 ;
update sales_rep set cumpleanio = '2010-12-10' where numero =5 ;
update sales_rep set cumpleanio = '2011-11-11' where numero =6 ;

ALTER TABLE sales_rep MODIFY column cumpleanio date;-- cambiar el tipo de datos a la columna
ALTER TABLE sales_rep MODIFY column valor_mejor int AFTER  cumpleanio; -- CAMBIAR ORDEN DE COLUMNAS DE UNA TABLA EN MYSQL
select dayofyear(fecha) as fecha from sales_rep where numero = 6;-- Como buscar el dia del año
select * from sales_rep;
update sales_rep set fecha='2021-12-29' where numero=6;



































