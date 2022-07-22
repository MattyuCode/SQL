
CREATE TABLE prueba2 (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(23),
    apellido VARCHAR(40),
    sueldo DOUBLE,
    PRIMARY KEY (id)
);
SELECT * FROM prueba2;
INSERT INTO prueba2(nombre, apellido, sueldo) VALUES ('mateo', 'web',10.2) ; 
INSERT INTO prueba2(nombre,apellido,sueldo)
VALUES ("mattyu", "web", 23.4),
	    ("mendoza", "carmelo", 4.4);  -- esto funciona cuando le agregas en la tabla un increment tambien funciona al sin incre
insert into prueba2 values("mish", "Mike", 12); -- esto solo funciona cuando no le agregas un auto_increment
SELECT * FROM prueba2;
delete from prueba2 where id=4;
DELETE FROM prueba2 WHERE nombre='Smith';
update prueba2 set nombre="mendoza" where id = 3; 

truncate table prueba2; -- Renicia en uno 
delete from prueba2;-- continua el numero que sigue del id eliminado






