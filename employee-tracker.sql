DROP DATABASE IF EXISTS employee_db;

CREATE DATABASE employee_db;

USE employee_db;

CREATE TABLE department (
id     INT PRIMARY KEY NOT NULL AUTO_INCREMENT,

name VARCHAR(30) NOT NULL 
);

INSERT INTO department (name)
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
VALUES ("Sales Team Lead", 90000, 1);
INSERT INTO roles (title, salary, department_id)
VALUES ("Salesperson", 60000, 2);

INSERT INTO roles (title, salary, department_id)
VALUES ("Lead Finance Manager", 99000, 3);
INSERT INTO roles (title, salary, department_id)
VALUES ("Accountant", 75000, 4);

INSERT INTO roles (title, salary, department_id)
VALUES ("Lead Engineer", 150000, 5);

DROP TABLE IF EXISTS employee;
CREATE TABLE employee (
  id INT PRIMARY KEY AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30) NOT NULL,
  last_name  VARCHAR(30) NOT NULL,
  roles_id INT ,
  manager_id INT NULL,
  FOREIGN KEY (roles_id) REFERENCES roles(id) ON DELETE SET NULL,
  FOREIGN KEY (manager_id) REFERENCES employee(id) ON DELETE SET NULL
);


-- Employee values
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Kendrix", "Jones", 4, NULL);
INSERT INTO employee (first_name, last_name, roles_id, manager_id)
VALUES ("Tasha", "Lewis", 5, NULL);



--Updating the manager for specific employees
UPDATE employee SET manager_id = 1 WHERE id = 1;
UPDATE employee SET manager_id = 1 WHERE id = 2;
UPDATE employee SET manager_id = 1 WHERE id = 3;
UPDATE employee SET manager_id = 1 WHERE id = 4;