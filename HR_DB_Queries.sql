/*1-Write a query in SQL to display the full name (first and last name), and salary for those employees who earn below
6000*/
use hr_db;
select concat(employees.FIRST_NAME," ",employees.LAST_NAME) as Employee_name, SALARY
from employees
where salary < 6000;

/* 2 - Write a query in SQL to display the first name, last name, department ID, and department name for each
employee.*/
select employees.FIRST_NAME,employees.LAST_NAME,employees.DEPARTMENT_ID, DEPARTMENT_NAME
from employees, departments
where employees.DEPARTMENT_ID = departments.DEPARTMENT_ID;

/* 3-Write a query in SQL to display the first and last_name, department number and salary for those employees who
earn more than 8000*/
select employees.FIRST_NAME,employees.LAST_NAME,DEPARTMENT_ID, SALARY
from employees
where salary > 8000;

/*4-Write a query in SQL to display the first and last name, and department number for all employees whose last name
is “McEwen*/
select employees.FIRST_NAME,employees.LAST_NAME,DEPARTMENT_ID
from employees
WHERE LAST_NAME in ('McEwen');

/* 5-Write a query in SQL to display the full name (first and last), hire date, salary, and department number for those
employees whose first name does not containing the letter M and make the result set in ascending order by
department number.*/
select concat(employees.FIRST_NAME,"  ",employees.LAST_NAME) as Employee, HIRE_DATE, SALARY, DEPARTMENT_ID
from employees
where employees.FIRST_NAME not like '%M%'
order by DEPARTMENT_ID;

/*6-Write a query in SQL to display the full name (first and last), the phone number and email separated by hyphen,
and salary, for those employees whose salary is within the range of 9000 and 17000. The column headings assign
with Full_Name, Contact_Details and Remuneration respectively*/
select concat(employees.FIRST_NAME,"  ",employees.LAST_NAME) as Full_Name, concat(PHONE_NUMBER,"-", EMAIL) as Contact_Details, SALARY AS Remuneration
from employees
where SALARY between 9000 and 17000;

/* 7 - Write a query in SQL to display the full name (first and last), job id and date of hire for those employees who was
hired during May 24th, 2007 and April 21st, 2008*/
select concat(employees.FIRST_NAME,"  ",employees.LAST_NAME) as Employee, JOB_ID,HIRE_DATE
from employees
WHERE  HIRE_DATE = '2007-05-24' OR HIRE_DATE= '2008-04-21';

/*8. Write a query in SQL to display the the full name (first and last name), and department number for those
employees who works either in department 60 or 80.*/
select concat(employees.FIRST_NAME,"  ",employees.LAST_NAME) as Employee,DEPARTMENT_ID
from employees
where DEPARTMENT_ID= 60 OR DEPARTMENT_ID= 80;
 
/*9.Write a query in SQL to display the first and last name, departmentID, city, and state province for each employee*/
select concat(employees.FIRST_NAME,"  ",employees.LAST_NAME) as Employee,DEPARTMENT_ID,CITY, STATE_PROVINCE
FROM employees,locations
where locations.LOCATION_ID in(
select locations.LOCATION_ID
from departments
where locations.LOCATION_ID= departments.LOCATION_ID
)
;



/* 10- Write a query in SQL to display the first name, last name, salary, and job grade for all employees*/
select concat(employees.FIRST_NAME,"  ",employees.LAST_NAME) as Employee,SALARY, GRADE_LEVEL
from employees JOIN job_grades
ON SALARY between job_grades.LOWEST_SAL AND job_grades.HIGHEST_SAL;