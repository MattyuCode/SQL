 CREATE TABLE user(
id int not null auto_increment primary key,
nombre varchar(50) not null,
edad int not null,
email varchar(100) not null
);

INSERT INTO user (nombre, edad, email) values ('Oscar', 25, 'oscar@gmail.com'),
('Layla', 15, 'layla@gmail.com'),('Nicolas', 36, 'nico@gmail.com'), ('Chanchito', 7, 'oscar@gmail.com');

select * from user;

update user set email = 'chanchito@gmail.com' where id = 4;


 create table products(
id int not null auto_increment primary key,
nombre varchar(50) not null,
id_user int not null,
marca varchar(50) not null,
foreign key (id_user) references user(id)
);


 insert into products (nombre, id_user, marca)
values ('ipad', 1, 'apple'),
('iphone', 1, 'apple'),
('watch', 2, 'apple'),
('macbook', 1, 'apple'),
('imac', 3, 'apple'),
('ipad mini', 2, 'apple');

select * from products;
select u.id, u.nombre, u.edad, u.email, pro.nombre, pro.id_user from user u left join products pro on u.id = pro.id_user;
select u.id, u.nombre, u.edad, u.email, pro.nombre, pro.id_user from user u inner join products pro on u.id = pro.id_user;
select count(p.id), u.nombre from products p left join user u on u.id = p.id_user group by p.id_user;
























