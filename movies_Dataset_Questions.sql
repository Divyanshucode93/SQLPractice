-- Set 1: Questions 1 – 10 (Simple SQL)

-- Retrieve all columns for the first 10 movies in the dataset.
SELECT * FROM public.movies LIMIT 10;

-- List all unique movie ratings available in the dataset.
SELECT DISTINCT rating FROM public.movies;

-- Find the name, genre, and year of all movies released in the year 2000.
SELECT name, genre, year 
FROM public.movies
WHERE year = 2000;

-- Retrieve the name and score of all movies that have a score higher than 8.5.
SELECT name, score
FROM public.movies
WHERE score > 8.5;

-- Find all movies where the genre is 'Action' and the country is 'United Kingdom'.
SELECT * 
FROM public.movies
WHERE genre = 'Action' AND country = 'United Kingdom';

-- List the name, director, and budget of all movies that had a budget greater than $150,000,000.
SELECT name, director, budget 
FROM public.movies
WHERE budget > 150000000;

-- Find the name and gross revenue of movies where the star is 'Tom Hanks'.
SELECT name, gross
FROM public.movies
WHERE star = 'Tom Hanks';

-- Retrieve all movies that are either 'Comedy' or 'Horror'.
SELECT *
FROM public.movies
WHERE genre IN('Comedy','Horror');

-- List all movies sorted by their runtime in descending order (longest movies first).
SELECT *
FROM public.movies
ORDER BY runtime DESC;

-- Find the name and company of movies released between 1980 and 1985 (inclusive).
SELECT name, company
FROM public.movies
WHERE year BETWEEN 1980 AND 1985;
