--Author Name Caio Leonardo Bueno Basaglia
--Student ID:152593174
--Date: 08/01/2019
--Workshop 1 DBS301

--Q1
SELECT *
FROM EMPLOYEES; --This is the longest table

SELECT
* FROM DEPARTMENTS;

SELECT
* FROM JOB_HISTORY;

--Q2
--This statement does not work
--SELECT last_name "LName", job_id "Job Title", Hire Date "Job Start"
--FROM employees;

--Correct statement
SELECT last_name AS "LName", job_id AS "Job Title", hire_date AS "Job Start"
FROM employees; 


--Q3
--This statement does not work because there's an extra comma after Emp_Comm
--and missing underlines on field names
--SELECT employee_id, last name, commission_pct Emp Comm,
--FROM employees;

--Correct statement
--SELECT employee_id, last_name, commission_pct Emp_Comm
--FROM employees;
--Actually correct statement 
SELECT employee_id, last_name, comission_pct AS "Emp Comm"
	FROM employees;
-- Because Emp_comm is supposed to be an Alias, not a row


--Q4
--SELECT *
--FROM locations;
--Correct answer
DESCRIBE locations;
--Using describe shows only the structure of the table. The statement used shows all the data
--Which was not asked

--Q5
SELECT   location_id AS "City#",
	 city AS "City",
	 state_province || country_id AS "Province with Country code"
	FROM locations;
