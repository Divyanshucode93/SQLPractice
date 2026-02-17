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