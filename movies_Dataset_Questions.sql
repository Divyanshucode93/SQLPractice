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

-- Set 3: Questions 21 – 30 (Simple SQL)

-- Find all movies that were not produced in the 'United States'.
SELECT *
FROM public.movies
WHERE country NOT IN('United States');

-- List the name and runtime of movies that are between 90 and 120 minutes long (inclusive).
SELECT name, runtime
FROM public.movies
WHERE runtime BETWEEN 90 AND 120;

-- Retrieve the name and genre of the 10 movies with the lowest score.
SELECT name, genre
FROM public.movies
ORDER BY score ASC LIMIT 10;

-- List all unique genres present in the dataset.
SELECT DISTINCT(genre)
FROM public.movies;

-- Find the name and budget of movies where the director is either 'James Cameron', 'Ridley Scott', or 'Christopher Nolan'.
SELECT name, budget
FROM movies
WHERE director IN('James Cameron','Ridley Scott','Christopher Nolan');

-- Count how many movies have a rating of 'R'.
SELECT COUNT(*)
FROM movies
WHERE rating='R';

-- Retrieve the name and gross of movies where the gross is greater than $1,000,000,000 (1 billion).
SELECT name, gross
FROM movies
WHERE gross > 1000000000;

-- Find all movies where the company name contains the word 'Universal' anywhere in its name.
SELECT *
FROM movies
WHERE company LIKE '%Universal%';

-- List the name, year, and score of movies released in the 1990s (from 1990 to 1999).
SELECT name, year, score
FROM movies
WHERE year BETWEEN 1990 AND 1999;

-- Retrieve all columns for the single movie that has the highest number of votes.
SELECT *
FROM movies
ORDER BY votes DESC LIMIT 1;


-- Set 4: Questions 31 – 40 (Simple SQL)


-- Retrieve the name and director of all movies where the director name starts with the letter 'A'.
SELECT name, director 
FROM movies
WHERE director LIKE 'A%';

-- Find the total gross revenue for all movies in the 'Comedy' genre (alias the result as total_comedy_gross).
SELECT SUM(gross) AS total_comedy_gross
FROM movies
WHERE genre = 'Comedy';

-- List the names of all movies that have a runtime of exactly 120 minutes.
SELECT name
FROM movies
WHERE runtime = 120;

-- Find the average budget of movies released in the year 2010.
SELECT AVG(budget)
FROM movies
WHERE year = 2010;

-- Retrieve the name, score, and votes of the top 3 highest-rated movies that have more than 100,000 votes.
SELECT name, score, votes
FROM movies
WHERE votes > 100000
ORDER BY score DESC LIMIT 3;

-- List all movies where the star is 'Robert De Niro' and the score is greater than 7.0.
SELECT *
FROM movies
WHERE star = 'Robert De Niro' AND score > 7.0;

-- Find the movie with the smallest (minimum) budget that is greater than 0.
SELECT *
FROM movies
WHERE budget > 0
ORDER BY budget ASC LIMIT 1;

-- Retrieve the names of movies that were produced by either 'Paramount Pictures' or 'Universal Pictures'.
SELECT name
FROM movies
WHERE company IN('Paramount Pictures','Universal Pictures');

-- List the name and year of movies where the gross revenue is less than the budget (indicating a potential loss).
SELECT name, year
FROM movies
WHERE gross < budget;

-- Count how many unique directors are present in the dataset.
SELECT COUNT(DISTINCT(director))
FROM movies;