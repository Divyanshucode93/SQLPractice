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


-- Set 2: Questions 11 – 20 (Simple SQL)

-- List the names and scores of all movies directed by 'Steven Spielberg'.
SELECT name, score 
FROM public.movies
WHERE director = 'Steven Spielberg';

-- Find the total number of movies recorded in the dataset.
SELECT COUNT(*)
FROM public.movies;

-- Retrieve the name and released date of all movies where the rating is exactly 'PG-13'.
SELECT name, released 
FROM public.movies
WHERE rating = 'PG-13';

-- List all movies where the gross revenue is recorded as NULL (missing).
SELECT * 
FROM public.movies
WHERE gross ISNULL;

-- Find all movies produced by 'Warner Bros.' and released after the year 2000.
SELECT *
FROM public.movies
WHERE year > 2000 AND company = 'Warner Bros.';

-- Retrieve the name, star, and votes for movies that have more than 500,000 votes.
SELECT name, star, votes
FROM public.movies
WHERE votes > 500000;

-- Calculate the average score of all movies in the dataset (alias the result as average_score).
SELECT AVG(score) AS average_score
FROM public.movies;

-- List the top 5 movies with the highest budget.
SELECT *
FROM public.movies
ORDER BY budget DESC LIMIT 5;

-- Find all movies where the writer and the director are the same person.
SELECT *
FROM public.movies
WHERE director = writer;

-- Retrieve the name and year of all movies where the title (name) starts with the word 'Star'.
SELECT name, year
FROM public.movies
WHERE name LIKE 'Star%';