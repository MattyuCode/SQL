use testjoin;
CREATE TABLE Departamentos(
    Id int,
    Nombre varchar(20)
);
CREATE TABLE Empleados(
    Nombre varchar(20),
    DepartamentoId int
);
INSERT INTO Departamentos VALUES(31, 'Sales'), (33, 'Engineering'), (34, 'Clerical'), (35, 'Marketing');
INSERT INTO Empleados VALUES('Rafferty', 31), ('Jones', 33), ('Heisenberg', 33),('Robinson', 34), ('Smith', 34), ('Williams', NULL);
SELECT * FROM Empleados;
SELECT * FROM Departamentos;
select em.Nombre, em.DepartamentoId, de.Nombre from empleados em inner join Departamentos de on em.DepartamentoId = de.Id;

-- INNER JOIN
select * from empleados em join Departamentos dep on em.DepartamentoId=dep.Id;
select em.Nombre, em.DepartamentoId, de.Nombre from empleados em join Departamentos de on em.DepartamentoId = de.Id;
select em.Nombre, em.DepartamentoId, de.Nombre from empleados em inner join Departamentos de on em.DepartamentoId = de.Id;

-- LEFFT JOIN
select em.Nombre,em.DepartamentoId, de.Nombre from empleados em left join Departamentos de on em.DepartamentoId=de.Id;

-- RIGHT JOIN
select em.Nombre,em.DepartamentoId, de.Nombre from empleados em right join Departamentos de on em.DepartamentoId=de.Id;

-- FULL JOIN
-- select em.Nombre,em.DepartamentoId, de.Nombre from empleados em  full join Departamentos de on em.DepartamentoId=de.Id;





























