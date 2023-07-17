-- 1. Add 3 new artists to the artist table
INSERT INTO artist (artist_name)
VALUES
    ('Black Sabbath'),
    ('The Black Keys'),
    ('Black Eyed Peas');

-- 2. Select 10 artists in reverse alphabetical order
SELECT artist_name
FROM artist
ORDER BY artist_name DESC
LIMIT 10;

-- 3. Select 5 artists in alphabetical order
SELECT artist_name
FROM artist
ORDER BY artist_name
LIMIT 5;

-- 4. Select all artists that start with the word 'Black'
SELECT artist_name
FROM artist
WHERE artist_name LIKE 'Black%';

-- 5. Select all artists that contain the word 'Black'
SELECT artist_name
FROM artist
WHERE artist_name LIKE '%Black%';
