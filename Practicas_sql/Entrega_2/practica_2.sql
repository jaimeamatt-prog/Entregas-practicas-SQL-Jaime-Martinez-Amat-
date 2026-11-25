-- PRACTICA 2: SQL y BASES DE DATOS

-- EJERCICIO 1
SELECT title AS name,
       revenue,
       budget
FROM movies
WHERE LOWER(status) = 'released'
  AND revenue <= budget;


-- EJERCICIO 2
SELECT title AS name,
       release_date
FROM movies
WHERE LOWER(title) LIKE '%terminator%';


-- EJERCICIO 3
SELECT title AS name,
       runtime,
       vote_average
FROM movies
WHERE runtime > 120;


-- EJERCICIO 4
SELECT title AS name,
       status,
       budget
FROM movies
WHERE LOWER(COALESCE(status, '')) <> 'released';


-- EJERCICIO 5
SELECT title AS name,
       vote_average,
       overview
FROM movies
WHERE vote_average > 7
  AND LOWER(overview) LIKE '%god%';


-- EJERCICIO 6
SELECT title AS name,
       vote_count,
       vote_average,
       release_date
FROM movies
WHERE vote_count > 1000
  AND vote_average <= 5;


-- EJERCICIO 7
SELECT title AS name,
       popularity,
       release_date,
       vote_average
FROM movies
WHERE popularity > 100
  AND LOWER(overview) LIKE '%alien%';


-- EJERCICIO 8
SELECT title AS name,
       vote_average,
       release_date
FROM movies
WHERE release_date IS NOT NULL
  AND release_date < '1980-01-01';


-- EJERCICIO 9
SELECT title AS name,
       LENGTH(tagline) AS tagline_length,
       popularity,
       tagline
FROM movies
WHERE LENGTH(tagline) > 100;


-- EJERCICIO 10
SELECT title AS name,
       release_date,
       runtime,
       vote_average
FROM movies
WHERE runtime > 0
  AND runtime <= 60;
