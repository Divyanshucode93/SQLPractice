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


-- Set 5: Questions 41 – 50 (Simple SQL)


-- Find all movies where the writer column is NULL.
SELECT *
FROM movies
WHERE writer IS NULL;

-- Retrieve the name and score of all movies where the score is between 7.0 and 8.0 (inclusive).
SELECT name, score
FROM movies
WHERE score BETWEEN 7.0 AND 8.0;

-- List the name and star of movies released in 2015 that have a 'PG-13' rating.
SELECT name, star
FROM movies
WHERE year=2015 AND rating='PG-13';

-- Calculate the total budget spent by the company 'Lucasfilm' across all their movies in this dataset.
SELECT SUM(budget)
FROM movies
WHERE company='Lucasfilm';

-- Find all movies where the movie name is exactly the same as the director (if any exist).
SELECT *
FROM movies
WHERE name=director;

-- List the name and votes of movies that have a score of exactly 9.0.
SELECT name, votes
FROM movies
WHERE score=9.0;

-- Retrieve all movies where the star name contains 'Pitt' (e.g., Brad Pitt).
SELECT *
FROM movies
WHERE star LIKE '%Pitt%';

-- Find the average runtime for movies in the 'Animation' genre.
SELECT AVG(runtime)
FROM movies
WHERE genre = 'Animation';

-- List the name, gross, and budget of movies where the gross is at least triple (3x) the budget.
SELECT name, gross, budget
FROM movies
WHERE gross >= (3*budget);

-- Retrieve the name and runtime of the single movie with the longest duration in the entire dataset.
SELECT name, runtime
FROM movies
ORDER BY runtime DESC LIMIT 1;


-- Set 6: Questions 51 – 60 (Simple SQL)

-- Retrieve the name and budget of all movies with a budget of less than $1,000,000.
SELECT name, budget 
FROM movies
WHERE budget < 1000000;

-- Find all movies that are in the 'Action' genre and have an 'R' rating.
SELECT *
FROM movies
WHERE genre = 'Action' AND rating = 'R';

-- Count how many movies were released in the year 1995.
SELECT COUNT(*)
FROM movies
WHERE year=1995;

-- List the name and score of movies where the score is exactly 5.0, sorted by name alphabetically.
SELECT name,score
FROM movies
WHERE score=5.0
ORDER BY name ASC;

-- Find the name and runtime of the longest movie released in the year 1980.
SELECT name, runtime
FROM movies
WHERE year=1980
ORDER BY runtime DESC LIMIT 1;

-- Retrieve the names of all movies that end with the number '2' (e.g., "Toy Story 2").
SELECT *
FROM movies
WHERE name LIKE '%2';

-- Find the total votes for all movies directed by 'Christopher Nolan'.
SELECT SUM(votes)
FROM movies
WHERE director='Christopher Nolan';

-- List the name and released date for movies that were released in the month of 'June' (Hint: the released column is a string like 'June 13, 1980...').
SELECT name, released
FROM movies
WHERE released LIKE 'June%';

-- Find the average score of movies produced by 'Universal Pictures'.
SELECT AVG(score)
FROM movies
WHERE company='Universal Pictures';

-- Retrieve the name, budget, and gross of the top 5 most expensive movies (highest budget) produced by 'Paramount Pictures'.
SELECT name, budget, gross
FROM movies
WHERE company='Paramount Pictures'
ORDER BY budget DESC LIMIT 5;


-- Set 7: Questions 61 – 70 (Simple SQL)


-- Find the name and genre of movies where the director is 'Quentin Tarantino' and the runtime is greater than 150 minutes.
SELECT name, genre
FROM movies
WHERE director='Quentin Tarantino' and runtime>150;

-- Retrieve the total number of movies that have a gross revenue greater than their budget.
SELECT COUNT(*)
FROM movies
WHERE gross > budget;

-- List the names of all movies where the company is 'DreamWorks Animation'.
SELECT name
FROM movies
WHERE company = 'DreamWorks Animation';

-- Find the name and score of the movie(s) with the highest score released in the year 2012.
SELECT name, score
FROM movies
WHERE year=2012
ORDER BY score DESC LIMIT 1;

-- Retrieve the name, writer, and star of movies where the writer and star are the same person.
SELECT name, writer, star 
FROM movies
WHERE writer = star;

-- Count how many movies have a runtime between 60 and 90 minutes (inclusive).
SELECT COUNT(*)
FROM movies
WHERE runtime BETWEEN 60 AND 90;

-- List the name and gross of movies where the gross is between $500,000,000 and $1,000,000,000.
SELECT name, gross
FROM movies
WHERE gross BETWEEN 500000000 AND 1000000000;

-- Find all movies where the director name contains 'Scott' anywhere (e.g., Ridley Scott, Tony Scott).
SELECT *
FROM movies
WHERE director LIKE '%Scott%';

-- Retrieve the name and score of the 5 movies with the most votes in the 'Horror' genre.
SELECT name, score
FROM movies
WHERE genre='Horror'
ORDER BY votes DESC LIMIT 5;

-- Calculate the total gross revenue of all movies released in the 1980s (from 1980 to 1989).
SELECT SUM(gross)
FROM movies
WHERE year BETWEEN 1980 AND 1989;