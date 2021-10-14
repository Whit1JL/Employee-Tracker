DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
id     INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

names VARCHAR(30) NOT NULL 
);

INSERT INTO department (names)
VALUES ("Sales"), ("Legal"), ("Finance"), ("Engineering"), ("Emergency Personnel");

-- Table for roles 
CREATE TABLE roles (
id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

title VARCHAR(30) NOT NULL,
    
salary DECIMAL(10) NOT NULL, 

department_id INT,

FOREIGN KEY (department_id) REFERENCES department(id)
);

INSERT INTO roles (title, salary, department_id)
VALUES ("Sales Team Lead", 90000, 11);
INSERT INTO roles (title, salary, department_id)
VALUES ("Salesperson", 60000, 22);

INSERT INTO roles (title, salary, department_id)
VALUES ("Lead Finance Manager", 99000, 33);
INSERT INTO roles (title, salary, department_id)
VALUES ("Accountant", 75000, 44);

INSERT INTO roles (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 55);
INSERT INTO roles (title, salary, department_id)
VALUES ("Software Engineer", 100000, 66);
    
INSERT INTO roles (title, salary, department_id)
VALUES ("Lawyer", 100000, 77);
INSERT INTO roles (title, salary, department_id)
VALUES ("Legal Aide", 50000, 88);

CREATE TABLE employee (
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,

    roles_id INT NULL,
    manager_id INT NULL,

    FOREIGN KEY (roles_id) REFERENCES roles(id),
    FOREIGN KEY (manager_id) REFERENCES employee(id),
);

-- Employee values
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Jeremy", "Johnson", 22, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Randy", "Brooks", 44, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Jessica", "White", 11, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Kendrix", "Jones", 88, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Tasha", "Lewis", 66, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Joseph", "Phillips", 33, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Mali", "Mahone", 55, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Lina", "Smith", 77, NULL);
INSERT INTO roles (title, salary, department_id)
VALUES ("EMT", 55000, 99);

--Updating the manager for specific employees
UPDATE employee SET manager_id = 1 WHERE id = 11;
UPDATE employee SET manager_id = 1 WHERE id = 33;
UPDATE employee SET manager_id = 1 WHERE id = 55;
UPDATE employee SET manager_id = 1 WHERE id = 77;