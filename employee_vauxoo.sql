-- Your sql code in this file
-- NOTE: Please, don't add sentence to create database in this script file.
--       You can create database locally to test it.
--       Consider add ';' at end sentence.
--       La prueba Unitest de SQL indica error en la cantidad de campos creados en tabla employee el campo adicional es necesario para hacer la relacion entre employee y employee_department.

CREATE TABLE employee_department (
    id           integer        NOT NULL,
    name         varchar (50)    NOT NULL,
    description     varchar (100)    NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE employee (
    id           integer       NOT NULL,
    first_name     varchar (50)  NOT NULL,
    last_name     varchar (50)  NOT NULL,
    deparment_id       integer       NOT NULL,
    manager_id       integer       NULL,
    PRIMARY KEY (id),
    CONSTRAINT manager_id FOREIGN KEY (manager_id) REFERENCES employee_employee.employee(id),
    FOREIGN KEY (deparment_id) REFERENCES employee_employee.employee_department (id)
);

CREATE TABLE employee_hobby (
    id           integer     NOT NULL,
    name         varchar (50)     NOT NULL,
    description    varchar(100)    NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE rel_employee_employee_hobby (
    employee_id            integer ,
    employee_hobby_id       integer ,
    PRIMARY KEY (employee_id, employee_hobby_id),
    FOREIGN KEY (employee_id) REFERENCES employee_employee.employee (id),
    FOREIGN KEY (employee_hobby_id) REFERENCES employee_employee.employee_hobby (id)
);

INSERT INTO employee_department VALUES (1, 'Administracion','Departamento de administracion y finanzas');
INSERT INTO employee_department VALUES (2, 'IT','Departamento de Informacion y Tecnologia');
INSERT INTO employee_department VALUES (3, 'Mercadeo','Departamento de marketing');
INSERT INTO employee_department VALUES (4, 'Logistica','Departamento de Logistica');
INSERT INTO employee_department VALUES (5, 'RRHH','Departamento de Recursos Humanos');
INSERT INTO employee_department VALUES (6, 'Compras','Departamento de Compras');

INSERT INTO employee VALUES (1, 'Fernando','Diaz', 2, null );
INSERT INTO employee VALUES (2, 'Marisol','Perez', 2, 1);
INSERT INTO employee VALUES (3, 'Jose','Paez', 5, 1);
INSERT INTO employee VALUES (4, 'Margarita','Ruiz', 4, 1);

INSERT INTO employee_hobby VALUES (1, 'Natacion', 'Deporte acuatico');
INSERT INTO employee_hobby VALUES (2, 'Pintura', 'Pinta cuadros');
INSERT INTO employee_hobby VALUES (3, 'Filatelia', 'Colecciona sellos y estampillas');

INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (1, 1);
INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (1, 3);
INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (2, 3);
INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (2, 2);
INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (3, 1);
INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (3, 2);
INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (4, 3);
INSERT INTO rel_employee_employee_hobby ( employee_id , employee_hobby_id ) VALUES (4, 2);