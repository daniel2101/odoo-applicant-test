# Casai - Odoo Applicant Test

This repository will be used by applicants to collaborate with casai to upload the results of their technical evaluation here, via pull request (PR).

* Make a fork of this repository, with your github user and resolve the technical test problems

## Edit this readme file and complete the next data:
#### Full Name: Salvador Daniel Pelayo Gómez
#### Personal Email: daniel.ionerd@gmail.com

* Make a commit with the label "[+] Personal Info"

## Problems & instructions
### 1. SQL
1. Create a database named casai_test_db
1. create a table named "employee" with the fields "id", "first_name", "last_name"
1. Create a table named "employee_department" with the fields "id", "name", "description"
1. Make the necessary changes to assign employees of their respective department.
1. Insert 5 employees and 8 departments.
1. Assign a department to all employees

#### Rules: 
* An employee can only have one department assigned.

* Add a sql file named "employees.sql" to this repository at root folder. Do not make a database backup, use the sql script that you are used to build the database.
* Make a commit with the label "[+] employee database schema"

### 2. Odoo I
1. Create a odoo module named "employee_casai"
1. Create a model named "hr_employee" with the fields used for the table "employee" *(problem 1)*.
1. Add a computed field named "full_name" and concat "first_name" and "last_name"
1. Create a model named "hr_department" with the fields used for table "employee_department" *(problem 1)*.
1. Add demo data with the same 5 employees and 8 departmets used on *problem 1*
1. Make the necessary changes to assign employees of their respective department.
   
#### Rules: 
* The module need to be installable
* The module needs to be of application type
* The module needs to depend a mail module
* An employee can only have one department assigned.
* Make sure to add the correct security rules to "ir.model.access.csv" file.
* Make a commit to all changes with label "[+] employee module"

### 3. Odoo II
1. Add a tree and form view to employee module and show all data, incluided full_name.
1. Add a menus to make the follow structure.
   1. Casai
      1. People & Control
         1. Employees
1. Make an action for "Employees" menu and make to open the tree and form views for employees.

#### Rules:
* In the employees form view, the department field must restrict the *create* and the *edit* options.
* Make a commit to all changes with label "[+] employee views"


### 4. Odoo III (Optional to win extra point).
1. Write a unit test to validate the full_name computation when an employee has been added. 

#### Rules:
* The unit test may have at least 2 assert instructions with different scenarios.
* Make a commit to all changes with label "[+] Unit tests"


### 5. Pull Request
* Make a PR to this repository with title "Odoo Applicant - **Your Name**"

# Happy Coding :)
