DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;

USE employee_tracker;

CREATE TABLE employee (
    id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    role_id INT,
    manager_id INT,
    PRIMARY KEY (id),
    FOREIGN KEY(manager_id)
    REFERENCES employee(id)
);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("John", "Cena", 1, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Lebron", "James", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Russell", "Westbrook", 4, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Peter", "Griffin", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Stewie", "Tolbert", 5, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Lauren", "Bagel", 2, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Chris", "Paul", 3, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Tony", "Parker", 1, 1);
INSERT INTO employee(first_name, last_name, role_id, manager_id) VALUES ("Mark", "Sanchez", 1, 1);


CREATE TABLE role (
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(30) NOT NULL,
salary DECIMAL NOT NULL,
department_id INT,
PRIMARY KEY (id)
);

INSERT INTO role(title, salary, department_id) VALUES('Manager', 500000, 1);
INSERT INTO role(title, salary, department_id) VALUES('Engineer', 100000, 2);
INSERT INTO role(title, salary, department_id) VALUES('Accountant', 400000, 3);
INSERT INTO role(title, salary, department_id) VALUES('Designer', 300000, 4);
INSERT INTO role(title, salary, department_id) VALUES('Administration', 200000, 5);

CREATE TABLE department (
    id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    PRIMARY KEY (id)
);

INSERT INTO department(name)
VALUES ('Management'), ('Engineering'), ('Accounting'), ('Marketing'), ('Human Resources');