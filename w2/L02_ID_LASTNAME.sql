-- ***********************
-- Name: Caio Leonardo Bueno Basaglia
-- ID: 152593174
-- Date: 1/15/2018
-- Purpose: Lab 2 DBS301
-- ***********************

-- Task 1
SELECT employee_id AS "Employee Id", last_name AS "Last Name", to_char(salary, '$999,999.99') AS "Salary"
    FROM employees
    WHERE salary >= 8000 AND salary <= 12000
    ORDER BY salary;

-- Task 2
SELECT employee_id AS "Employee Id", last_name AS "Last Name", to_char(salary, '$999,999.99') AS "Salary"
    FROM employees
    WHERE salary >= 8000 AND salary <= 12000 AND (job_id = 'IT_PROG' OR job_id = 'SA_REP')
    ORDER BY salary;

-- Task 3
SELECT employee_id AS "Employee Id", last_name AS "Last Name", to_char(salary, '$999,999.99') AS "Salary"
    FROM employees
    WHERE (salary <= 8000 OR salary >= 12000) AND (job_id = 'IT_PROG' OR job_id = 'SA_REP')
    ORDER BY salary;

-- Task 4
SELECT last_name AS "Last Name", job_id AS "Job Title", to_char(salary, '$999,999.99') AS "Salary"
    FROM employees
    WHERE hire_date < to_date('2018-01-01', 'yyyy-dd-mm');

-- Task 5
SELECT last_name AS "Last Name", job_id AS "Job Title", to_char(salary, '$999,999.99') AS "Salary"
    FROM employees
    WHERE hire_date < to_date('2018-01-01', 'yyyy-dd-mm') AND salary > 12000
    ORDER BY job_id, salary DESC;

-- Task 6
SELECT job_id AS "Job Title", first_name || ' ' || last_name AS "Full Name"
    FROM employees
    WHERE upper(first_name) LIKE '%E%';
    
