-- Create a database named casai_test_db
CREATE DATABASE casai_test_db;

-- Create a table named "employee_department" with the fields "id", "name", "description"
CREATE TABLE employee_department (
    id INT NOT NULL,
    name VARCHAR(200) NOT NULL,
    description VARCHAR(500),
    PRIMARY KEY(id)
);

-- create a table named "employee" with the fields "id", "first_name", "last_name"
-- Make the necessary changes to assign employees of their respective department.
CREATE TABLE employee (
    id INT NOT NULL,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    department_id INT,
    PRIMARY KEY(id),
    CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES employee_department(id)
);


-- Insert 5 employees and 8 departments.

INSERT INTO employee_department VALUES
(1, 'FINANZAS', 'Departamento de finanzas'),
(2, 'RECURSOS HUMANOS', 'Departamento de recursos humanos'),
(3, 'ALMACEN', 'Departamento de almacen'),
(4, 'SOPORTE TECNICO', 'Departamento de soporte tecnico'),
(5, 'VENTAS', 'Departamento de ventas'),
(6, 'COMPRAS', 'Departamento de compras'),
(7, 'PROYECTOS', 'Departamento de proyectos'),
(8, 'SISTEMAS', 'Departamento de sistemas');

INSERT INTO employee VALUES
(1, "Juan", "Perez", 1),
(2, "Paco", "Perez", 2),
(3, "Pedro", "Perez", 3),
(4, "Miguel", "Perez", 4),
(5, "Angel", "Perez", 5);

-- Assign a department to all employees


-- Rules:
-- An employee can only have one department assigned.

-- Add a sql file named "employees.sql" to this repository at root folder. Do not make a database backup, use the sql script that you are used to build the database.

