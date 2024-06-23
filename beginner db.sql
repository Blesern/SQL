SELECT *
FROM parks_and_recreation.employee_demographics;

SELECT first_name, last_name, age, (age + 12) -20
FROM employee_demographics;

SELECT DISTINCT first_name, gender
FROM employee_demographics;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Leslie';

SELECT *
FROM employee_salary
WHERE salary >= 50000;

SELECT *
FROM employee_demographics
WHERE gender = 'Female';

SELECT *
FROM employee_demographics
WHERE gender != 'Female';

SELECT *
FROM employee_demographics
WHERE birth_date > '1981-01-01';

SELECT *
FROM employee_demographics
WHERE birth_date > '1981-01-01'
AND gender = 'Male';
# Also AND, OR, NOT

SELECT * 
FROM employee_demographics
WHERE birth_date > '1981-01-01'
OR NOT gender = 'Male';

SELECT *
FROM employee_demographics
WHERE (first_name = 'Leslie' AND age = 44) OR age > 55;

#LIKE STATEMNET
# % anything or _ specific
SELECT *
FROM employee_demographics
WHERE first_name LIKE '%er%';

SELECT * 
FROM employee_demographics
WHERE first_name LIKE 'A__%';

#GROUPBY ORDERBY
SELECT gender
FROM employee_demographics
GROUP BY gender;

SELECT gender, AVG(age)
FROM employee_demographics
GROUP BY gender;

SELECT occupation, salary
FROM employee_salary
GROUP BY occupation, salary;

#ASC and DESC
SELECT *
FROM employee_demographics
ORDER BY first_name DESC;

SELECT *
FROM employee_demographics
ORDER BY gender, age DESC;

#HAVING
SELECT gender , AVG(age)
FROM employee_demographics
GROUP BY gender
HAVING AVG(age) > 40;

SELECT occupation, AVG(salary)
FROM employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary)>75000;

#LIMIT and ALIASING
SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 3;

SELECT *
FROM employee_demographics
ORDER BY age DESC
LIMIT 2, 1;

SELECT gender, AVG(age) AS avg_age
FROM employee_demographics
GROUP BY gender
HAVING avg_age > 40;