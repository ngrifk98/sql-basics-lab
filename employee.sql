-- 1. List all employee first and last names only that live in Calgary
SELECT first_name, last_name
FROM employee
WHERE city = 'Calgary';

-- 2. Find the birthdate for the youngest employee
SELECT birthdate
FROM employee
ORDER BY birthdate DESC
LIMIT 1;

-- 3. Find the birthdate for the oldest employee
SELECT birthdate
FROM employee
ORDER BY birthdate
LIMIT 1;

-- 4. Find everyone that reports to Nancy Edwards
SELECT first_name, last_name
FROM employee
WHERE ReportsTo = (
    SELECT employee_id
    FROM employee
    WHERE first_name = 'Nancy' AND last_name = 'Edwards'
);

-- 5. Count how many people live in Lethbridge
SELECT COUNT(*)
FROM employee
WHERE city = 'Lethbridge';
