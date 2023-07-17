-- Nicholas Kingston
-- 1. Create a table called person with the specified columns
CREATE TABLE person (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    age INTEGER,
    height INTEGER,
    city VARCHAR(50),
    favorite_color VARCHAR(20)
);

-- 2. Insert 5 different people into the person table
INSERT INTO person (name, age, height, city, favorite_color)
VALUES
    ('John Doe', 25, 180, 'New York', 'Blue'),
    ('Jane Smith', 30, 165, 'Los Angeles', 'Green'),
    ('Michael Johnson', 22, 175, 'Chicago', 'Red'),
    ('Emily Williams', 18, 160, 'Houston', 'Orange'),
    ('Robert Brown', 35, 190, 'Dallas', 'Yellow');

-- 3. Select all the people in the person table by height from tallest to shortest
SELECT * FROM person ORDER BY height DESC;

-- 4. Select all the people in the person table by height from shortest to tallest
SELECT * FROM person ORDER BY height;

-- 5. Select all the people in the person table by age from oldest to youngest
SELECT * FROM person ORDER BY age DESC;

-- 6. Select all the people in the person table older than age 20
SELECT * FROM person WHERE age > 20;

-- 7. Select all the people in the person table that are exactly 18
SELECT * FROM person WHERE age = 18;

-- 8. Select all the people in the person table that are less than 20 and older than 30
SELECT * FROM person WHERE age < 30 AND age > 20;

-- 9. Select all the people in the person table that are not 27 (use not equals)
SELECT * FROM person WHERE age <> 27;

-- 10. Select all the people in the person table where their favorite color is not red
SELECT * FROM person WHERE favorite_color <> 'Red';

-- 11. Select all the people in the person table where their favorite color is not red and is not blue
SELECT * FROM person WHERE favorite_color NOT IN ('Red', 'Blue');

-- 12. Select all the people in the person table where their favorite color is orange or green
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green');

-- 13. Select all the people in the person table where their favorite color is orange, green or blue (use IN)
SELECT * FROM person WHERE favorite_color IN ('Orange', 'Green', 'Blue');

-- 14. Select all the people in the person table where their favorite color is yellow or purple (use IN)
SELECT * FROM person WHERE favorite_color IN ('Yellow', 'Purple');
