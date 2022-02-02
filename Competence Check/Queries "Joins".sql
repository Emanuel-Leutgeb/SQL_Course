/*Queries 01*/
SELECT JOB_ID, SUM(SALARY) AS "SUM SALARY"
FROM employees
GROUP BY JOB_ID
ORDER BY "SUM SALARY" DESC;

/*Queries 02*/
SELECT ROUND(AVG(SALARY), 2)
FROM employees;

/*Queries 03*/
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_NAME
FROM employees e
         INNER JOIN departments d ON e.department_id = d.department_id;

/*Queries 04*/
SELECT DEPARTMENT_NAME,
       POSTAL_CODE,
       CITY,
       STATE_PROVINCE,
       STREET_ADDRESS
FROM departments
         INNER JOIN locations l ON departments.LOCATION_ID = l.LOCATION_ID;

/*Queries 05*/
SELECT DEPARTMENT_NAME,
       STREET_ADDRESS,
       POSTAL_CODE,
       CITY,
       STATE_PROVINCE,
       COUNTRY_NAME
FROM locations
         INNER JOIN departments d ON locations.LOCATION_ID = d.LOCATION_ID
         INNER JOIN countries c ON locations.COUNTRY_ID = c.COUNTRY_ID;

/*Queries 06*/
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS MANAGER,
       DEPARTMENT_NAME,
       STREET_ADDRESS,
       POSTAL_CODE,
       CITY,
       STATE_PROVINCE,
       COUNTRY_NAME
FROM departments
         INNER JOIN locations l ON departments.LOCATION_ID = l.LOCATION_ID
         INNER JOIN countries c ON l.COUNTRY_ID = c.COUNTRY_ID
         INNER JOIN employees e ON departments.DEPARTMENT_ID = e.DEPARTMENT_ID
WHERE JOB_ID LIKE '%MAN';

/*Queries 07*/
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS "Name", JOB_TITLE AS "JOB", SALARY, DEPARTMENT_NAME
FROM employees
         INNER JOIN jobs j on employees.job_id = j.job_id
         INNER JOIN departments d ON employees.DEPARTMENT_ID = d.DEPARTMENT_ID;

/*Queries 08*/
SELECT BOSS.EMPLOYEE_ID,
       CONCAT(BOSS.FIRST_NAME, ' ', BOSS.LAST_NAME)     AS "BOSS",
       WORKER.MANAGER_ID,
       CONCAT(WORKER.FIRST_NAME, ' ', WORKER.LAST_NAME) AS "WORKER"
FROM employees WORKER
         INNER JOIN employees BOSS ON WORKER.MANAGER_ID = BOSS.EMPLOYEE_ID
ORDER BY BOSS.EMPLOYEE_ID ASC;