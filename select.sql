SELECT title, release_year 
FROM albums
WHERE release_year = 2018;

SELECT title, duration
FROM tracks
WHERE duration = (
    SELECT MAX(duration) 
    FROM tracks
);

SELECT title
FROM tracks
WHERE duration >= 210; -- (3.5 minutes = 210 seconds)

SELECT title
FROM collections
WHERE release_year BETWEEN 2018 AND 2020;

SELECT title
FROM artists
WHERE title NOT LIKE '% %'; -- selects artists whose name does not have a space character

SELECT title
FROM tracks
WHERE title LIKE '%my%';
