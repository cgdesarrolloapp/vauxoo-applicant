
CREATE TABLE employee_department (
	id          serial,
	name        varchar (50) NOT NULL,
	description varchar (50),
	CONSTRAINT  employee_department_pkey PRIMARY KEY (id)
);

CREATE TABLE employee (
	id         serial,
	first_name varchar (50) NOT NULL,
	last_name  varchar (50) NOT NULL,
	employee_department_id integer NOT NULL,
  	CONSTRAINT employee_pkey PRIMARY KEY (id),
  	FOREIGN KEY (employee_department_id) REFERENCES employee_department (id)

);

CREATE TABLE employee_hobby (
	id          serial,
	name        varchar (50) NOT NULL,
	description varchar (50),
	CONSTRAINT  employee_hobby_pkey PRIMARY KEY (id)
);

CREATE TABLE employee_employee_hobby (
	employee_id       serial,
	employee_hobby_id integer NOT NULL,
	FOREIGN KEY (employee_id) REFERENCES employee (id),
	FOREIGN KEY (employee_hobby_id) REFERENCES employee_hobby (id)
);


INSERT INTO employee_department (name, description) VALUES ('IT', 'Informacin y tecnologia');
INSERT INTO employee_department (name, description) VALUES ('RRHH', 'Recursos Humanos');
INSERT INTO employee_department (name, description) VALUES ('Compras', 'Compras');
INSERT INTO employee_department (name, description) VALUES ('Marketing', 'Mercadeo');
INSERT INTO employee_department (name, description) VALUES ('Logistica', 'Logistica');
INSERT INTO employee_department (name, description) VALUES ('Finanzas', 'Administracion y finanzas');

INSERT INTO employee (first_name, last_name, employee_department_id ) VALUES ('Maria', 'Ruiz','1');
INSERT INTO employee (first_name, last_name, employee_department_id ) VALUES ('Juan', 'Perez','2');
INSERT INTO employee (first_name, last_name, employee_department_id ) VALUES ('Carlos', 'Ramirez','4');
INSERT INTO employee (first_name, last_name, employee_department_id ) VALUES ('Luis', 'Diaz','4');

INSERT INTO employee_hobby (name, description) VALUES ('Natacion', 'practica natacion');
INSERT INTO employee_hobby (name, description) VALUES ('Arte', 'Artista');
INSERT INTO employee_hobby (name, description) VALUES ('Viajes', 'Prectica turismo');

INSERT INTO employee_employee_hobby VALUES (1, 2);
INSERT INTO employee_employee_hobby VALUES (1, 1);
INSERT INTO employee_employee_hobby VALUES (2, 3);
INSERT INTO employee_employee_hobby VALUES (2, 1);
INSERT INTO employee_employee_hobby VALUES (3, 1);
INSERT INTO employee_employee_hobby VALUES (3, 2);
INSERT INTO employee_employee_hobby VALUES (4, 1);
INSERT INTO employee_employee_hobby VALUES (4, 3);