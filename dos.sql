create table sales_rep(
employe_number int auto_increment primary key,
username varchar(50),
first_name varchar(50),
commission tinyint
);

insert into sales_rep(username, first_name,commission) values ("Rive", "Sol", 10),
("Gordimer", "Charlene", 15), ("Serote", "Mike", 10);
insert into sales_rep(username, first_name,commission) values ("Mattyu", "Mendoza", 120);

select commission from sales_rep where username ="Gordimer";

select * from sales_rep where commission > 10 or username = "Rive" and first_name="Sol";
 SELECT * FROM sales_rep WHERE username= 'Rive' AND first_name='Sol' OR commission>lO; 

select * from sales_rep where username like "%sero%";
SELECT * FROM sales_rep WHERE username LIKE "%e%e"; 

insert into sales_rep(username,first_name,commission) values
('Rive' , 'Mongane' ,10),
('Smith1' , 'Mike', 12) ;

select * from sales_rep order by username,commission;
select * from sales_rep order by commission desc;
select * from sales_rep order by commission desc, username asc, first_name asc;

select first_name, username,commission from sales_rep order by commission desc;
select first_name, username,commission from sales_rep order by commission desc limit 1;
select max(commission) as "El maximo es" from sales_rep;
select count(*) as 'La cantidad es' from sales_rep;
select count(username)  from sales_rep;
select avg(commission) from sales_rep;
select MIN(commission) FROM sales_rep; 
select sum(commission) FROM sales_rep; 
select first_name, username,commission from sales_rep order by commission desc limit 0,1;
select first_name, username,commission from sales_rep order by commission desc limit 2,3;
select employe_number, first_name, username,commission from sales_rep order by employe_number asc limit 0,5;

select distinct username from sales_rep;
select count(distinct username) from sales_rep;
select first_name, username,commission +1 from sales_rep;
update sales_rep set commission = 12 where first_name = "Sol";
select * from sales_rep;
describe sales_rep;

