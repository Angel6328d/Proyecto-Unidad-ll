CREATE TABLE trabajador (
    id_trabajador SERIAL PRIMARY KEY,
    name_trabajador VARCHAR(255) NOT NULL
);

CREATE TABLE area (
    id_area SERIAL PRIMARY KEY,
    name_area VARCHAR(255) NOT NULL
);

CREATE TABLE planta_trabajo (
    id_planta SERIAL PRIMARY KEY,
    name_planta VARCHAR(255) NOT NULL
);

CREATE TABLE especialidad (
    id_especialidad SERIAL PRIMARY KEY,
    name_especialidad VARCHAR(255) NOT NULL
);

SELECT * FROM trabajador;

INSERT INTO trabajador (id_trabajador, name_trabajador)
VALUES
	(1, 'Orelee'),
	(2, 'Mechelle'),
	(3, 'Kane'),
	(4, 'Nert'),
	(5, 'Tim'),
	(6, 'Ethelyn'),
	(7, 'Joana'),
	(8, 'Sheelagh'),
	(9, 'Riccardo'),
	(10, 'Lauren');

INSERT INTO area (id_area, name_area)
VALUES 
	(1, 'A'),
	(2, 'B'),
	(3, 'C'),
	(4, 'D'),
	(5, 'A'),
	(6, 'C'),
	(7, 'D'),
	(8, 'B'),
	(9, 'A'),
	(10, 'D');
	
INSERT INTO planta_trabajo (id_planta, name_planta)
VALUES
	(1, 'Planta A'),
	(2, 'Planta B'),
	(3, 'Planta C'),
	(4, 'Planta D'),
	(5, 'Planta C'),
	(6, 'Planta A'),
	(7, 'Planta D'),
	(8, 'Planta B'),
	(9, 'Planta A'),
	(10, 'Planta D');

INSERT INTO especialidad (id_especialidad, name_especialidad )
VALUES
	(1,'Mantenimiento'),
	(2, 'Recursos humanos'),
	(3, 'Administración'),
	(4, 'Programación'),
	(5, 'Recursos humanos'),
	(6, 'Administración'),
	(7, 'Mantenimiento'),
	(8, 'Programación'),
	(9, 'Mantenimiento'),
	(10, 'Programación');

ALTER TABLE trabajador 
DROP COLUMN name_trabajador;

ALTER TABLE trabajador
ADD COLUMN name_trabajador VARCHAR(255);

DROP TABLE area;

UPDATE trabajador
SET name_trabajador = 'Jose'
WHERE id_trabajador = 11;

DELETE FROM especialidad
WHERE id_especialidad = 9;

SELECT * FROM especialidad;