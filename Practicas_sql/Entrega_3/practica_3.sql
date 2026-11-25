
-- EJERCICIO 1
SELECT id AS movie_id,
       title,
       popularity,
       vote_average,
       release_date,
       production_countries
FROM movies
WHERE LOWER(production_countries) LIKE '%united states%'
ORDER BY popularity DESC;


-- EJERCICIO 2
SELECT id AS movie_id,
       title,
       popularity,
       vote_average,
       vote_count,
       production_countries
FROM movies
WHERE LOWER(production_countries) LIKE '%united states%'
  AND vote_average <= 5
ORDER BY vote_count DESC;


-- EJERCICIO 3

SELECT id AS movie_id,
       title,
       popularity,
       vote_average,
       release_date,
       strftime('%H:%M', release_date) AS release_time,
       production_countries
FROM movies
WHERE LOWER(production_countries) LIKE '%japan%'
  AND (
      CAST(strftime('%H', release_date) AS INTEGER) >= 22
      OR CAST(strftime('%H', release_date) AS INTEGER) <= 5
  );


-- EJERCICIO 4
SELECT id AS movie_id,
       title,
       release_date,
       vote_average,
       popularity,
       production_countries
FROM movies
WHERE LOWER(production_countries) LIKE '%japan%'
   OR LOWER(production_countries) LIKE '%china%'
   OR LOWER(production_countries) LIKE '%india%'
   OR LOWER(production_countries) LIKE '%korea%'
ORDER BY production_countries ASC,
         release_date ASC;


-- EJERCICIO 5
SELECT production_countries,
       original_language,
       title,
       COALESCE(NULLIF(original_title, ''),
                NULLIF(title, ''),
                'Sin título') AS NombreFinal
FROM movies
ORDER BY production_countries ASC;


-- EJERCICIO 6
SELECT title,
       production_countries,
       original_language,
       homepage,
       vote_average
FROM movies
WHERE LOWER(production_countries) LIKE '%españa%'
   OR LOWER(production_companies) LIKE '%españa%';
