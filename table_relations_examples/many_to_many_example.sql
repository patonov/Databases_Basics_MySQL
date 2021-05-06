CREATE DATABASE examples;

USE examples;

CREATE TABLE employees (
	employee_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    employee_name VARCHAR(30) NOT NULL 
);

CREATE TABLE projects (
	project_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	project_name VARCHAR(30) NOT NULL
);

CREATE TABLE employees_projects (
	employee_id INT,
    project_id INT,
CONSTRAINT pk_employees_projects PRIMARY KEY (employee_id, project_id),
CONSTRAINT fk_employees_projects_employees FOREIGN KEY (employee_id)
REFERENCES employees(employee_id),
CONSTRAINT fk_employees_projects_projects FOREIGN KEY (project_id)
REFERENCES projects(project_id)
);
