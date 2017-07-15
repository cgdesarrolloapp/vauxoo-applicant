-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
--       La prueba Unitest de SQL indica error en la cantidad de campos creados en tabla employee el campo adicional es necesario para hacer la relacion entre employee y employee_department.

CREATE TABLE employee_department (
	id   int              not null,
	name varchar (50)      not null,
	description varchar (100)      not null,
	PRIMARY KEY (id)
);

CREATE TABLE employee (
	id   int              not null,
	first_name varchar (50)      not null,
	last_name varchar (50)      not null,
	deparment_id   int       not null,
	PRIMARY KEY (id),
	FOREIGN KEY (deparment_id) REFERENCES employee_department(id) 
);

INSERT INTO employee_department VALUES (1, 'Administracion','Departamento de administracion y finanzas');
INSERT INTO employee_department VALUES (2, 'IT','Departamento de Informacion y Tecnologia');
INSERT INTO employee_department VALUES (3, 'Mercadeo','Departamento de marketing');
INSERT INTO employee_department VALUES (4, 'Logistica','Departamento de Logistica');
INSERT INTO employee_department VALUES (5, 'RRHH','Departamento de Recursos Humanos');
INSERT INTO employee_department VALUES (6, 'Compras','Departamento de Compras');

INSERT INTO employee VALUES (1, 'Fernando','Diaz', 2);
INSERT INTO employee VALUES (2, 'Marisol','Perez', 2);
INSERT INTO employee VALUES (3, 'Jose','Paez', 5);
INSERT INTO employee VALUES (4, 'Margarita','Ruiz', 4);

