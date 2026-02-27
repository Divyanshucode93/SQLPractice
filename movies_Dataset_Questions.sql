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


-- Set 8: Questions 71 – 80 (Simple SQL)

-- Find the name and genre of movies where the budget is recorded as 0.
SELECT name, genre	
FROM movies
WHERE budget=0;

-- List all unique country names represented in the dataset, sorted alphabetically.
SELECT DISTINCT(country)
FROM movies
ORDER BY country ASC;

-- Retrieve the name, score, and company of movies that have the word 'International' anywhere in their company name.
SELECT name, score, company
FROM movies
WHERE company LIKE '%International%';

-- Count how many movies in the dataset were directed by 'Tim Burton'.
SELECT COUNT(*)
FROM movies
WHERE director='Tim Burton';

-- Find the average runtime of all movies that have an 'R' rating.
SELECT AVG(runtime)
FROM movies
WHERE rating='R';

-- Retrieve the name and year of the 10 oldest movies in the dataset.
SELECT name, year
FROM movies
ORDER BY year ASC LIMIT 10;

-- List the name, gross, and budget of movies where the gross is more than 10 times the budget (only include movies where the budget is at least $1,000,000).
SELECT name,gross,budget
FROM movies
WHERE (gross > (10 * budget)) AND budget>=1000000;

-- Find the name and runtime of the movie with the shortest duration that is greater than 0.
SELECT name,runtime
FROM movies
WHERE runtime > 0
ORDER BY runtime ASC LIMIT 1;

-- Retrieve the names of movies that were released in 2010 but were not produced in the 'United States'.
SELECT name
FROM movies
WHERE year=2010 AND country NOT IN('United States');

-- Calculate the total number of votes for all movies released in the year 2000.
SELECT SUM(votes)
FROM movies
WHERE year=2000;


-- Set 9: Questions 81 – 90 (Simple SQL)

-- Retrieve the name and director of movies where the director name has exactly 15 characters (Hint: use LENGTH or LEN).@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
SELECT name,director
FROM movies
WHERE LENGTH(director)=15;

-- List the names of movies that have a score of 8.0 or higher and were released after 2015.
SELECT name
FROM movies
WHERE score>=8.0 AND year>2015;

-- Find the total gross revenue generated by movies in the 'Drama' genre.
SELECT SUM(gross)
FROM movies
WHERE genre='Drama';

-- Retrieve the name and star of movies where the star is either 'Johnny Depp' or 'Al Pacino'.
SELECT name,star
FROM movies
WHERE star IN('Johnny Depp','Al Pacino');

-- Count how many movies have a missing (NULL) rating.
SELECT COUNT(*)
FROM movies
WHERE rating IS NULL;

-- List the top 5 movies with the highest gross revenue that were released in the 1990s.
SELECT *
FROM movies
WHERE year BETWEEN 1990 AND 1999
ORDER BY gross DESC LIMIT 5;

-- Find the name and company of movies where the company name starts with the word 'The'.
SELECT name,company
FROM movies
WHERE company LIKE 'The%';

-- Retrieve the name and score of movies where the score is not between 4.0 and 6.0.
SELECT name,score
FROM movies
WHERE score NOT BETWEEN 4.0 AND 6.0;

-- Calculate the average votes for movies that have a budget greater than $100,000,000.
SELECT AVG(votes)
FROM movies
WHERE budget>100000000;

-- List all columns for movies where the genre is 'Biography' and the country is 'United Kingdom'.
SELECT *
FROM movies
WHERE genre='Biography' AND country='United Kingdom';


-- Set 10: Questions 91 – 100 (Simple SQL)

-- Find the name and genre of movies where the name contains the word 'Love' (case-sensitive or insensitive depending on your engine).
SELECT name, genre
FROM movies
WHERE name LIKE '%Love%';

-- Calculate the average gross revenue for movies that have a score of exactly 7.0.
SELECT AVG(gross)
FROM movies
WHERE score=7.0;

-- Retrieve the name and year of all movies where the writer is 'Woody Allen'.
SELECT name,year
FROM movies
WHERE writer='Woody Allen';

-- List the name and released date for all movies released in the month of 'December'.
SELECT name,released
FROM movies
WHERE released LIKE '%December%';

-- Count how many movies have a runtime of more than 180 minutes (3 hours).
SELECT COUNT(*)
FROM movies
WHERE runtime>180;

-- Find the name, budget, and gross of movies where the budget was exactly the same as the gross.
SELECT name,budget,gross
FROM movies
WHERE budget=gross;

-- Retrieve the names of the top 10 movies with the highest votes that are rated 'G'.
SELECT *
FROM movies
WHERE rating='G'
ORDER By votes DESC LIMIT 10;

-- List the name and star of movies released in 1980 that were produced by 'Columbia Pictures'.
SELECT name,star
FROM movies
WHERE year=1980 AND company='Columbia Pictures';

-- Find the total budget spent on all movies in the 'Action' genre released after 2010.
SELECT SUM(budget)
FROM movies
WHERE genre='Action' AND year>2010;

-- Retrieve all columns for the movie that has the lowest gross revenue (excluding movies with 0 or NULL gross).
SELECT *
FROM movies
WHERE gross IS NOT NULL AND gross<>0
ORDER BY gross ASC LIMIT 1;


-- Set 11: Questions 101 – 110 (Intermediate SQL)

-- For each genre, calculate the total number of movies, the average score, and the total gross revenue.
SELECT genre,COUNT(name),AVG(score),SUM(gross)
FROM movies
GROUP BY genre;

-- List all companies that have produced more than 50 movies in this dataset.
SELECT company, COUNT(company)
FROM movies
GROUP BY company
HAVING COUNT(company)>50;

-- Find the average budget of movies for each year, and sort the results by year in descending order.
SELECT year,AVG(budget)
FROM movies
GROUP BY year
ORDER BY year DESC;

-- Retrieve the name and score of all movies that have a score higher than the overall average score of all movies in the entire dataset.
SELECT name, score
FROM movies
WHERE score > (SELECT AVG(score) FROM movies);

-- For each rating (G, PG, R, etc.), find the maximum and minimum runtime recorded.
SELECT rating,MAX(runtime),MIN(runtime)
FROM movies
GROUP BY rating;

-- List the names of the top 10 directors who have generated the highest total gross revenue across all their movies.
SELECT director, SUM(gross)
FROM movies
GROUP BY director
ORDER BY SUM(gross) DESC LIMIT 10;

-- Find the top 5 stars who have appeared in the highest number of movies in this dataset.
SELECT star,COUNT(name)
FROM movies
GROUP BY star
ORDER BY COUNT(star) DESC LIMIT 5;

-- Calculate the average score of movies for each director, but only include directors who have directed at least 10 movies.
SELECT director,AVG(score)
FROM movies
GROUP BY director
HAVING COUNT(name)>=10;

-- Find the year that had the highest total gross revenue across all movies released that year.
SELECT year
FROM movies
GROUP BY year
ORDER BY SUM(gross) DESC LIMIT 1;

-- For each genre, find the total number of movies that were produced in the 'United States' versus those produced in other countries (Hint: You can use CASE or two separate counts).
SELECT genre, 
	COUNT(CASE WHEN country = 'United States' THEN 1 END) AS us_movies,
	COUNT(CASE WHEN country <>'United States' THEN 1 END) AS non_us_movies
FROM movies
GROUP BY genre;


-- Set 12: Questions 111 – 120 (Intermediate SQL)


-- Find all movies that have a runtime longer than the average runtime of all movies in the 'Action' genre.
SELECT * 
FROM movies
WHERE runtime > (SELECT AVG(runtime) AS action_genre_avg FROM movies
				 WHERE genre='Action');

-- List each director and the number of distinct genres they have worked in.
SELECT director, DISTINCT(genre)
FROM movies
GROUP BY director;
-- HAVING director = DISTINCT(genres);

-- Retrieve the name and gross of the movie with the highest gross in each year.
SELECT year, MAX(gross), name
FROM movies
GROUP BY year
ORDER BY MAX(gross) DESC;

-- Calculate the total budget and total gross for each company, but only show companies where the total gross is greater than the total budget.

-- Find the names of movies that were released in the same year as the movie 'The Shining'.

-- List the genre and the average score for that genre, but only for genres that have an average score greater than 7.0.

-- Retrieve the name and director of movies where the director has directed exactly 1 movie in this dataset.

-- For each year, find the difference between the maximum score and the minimum score (alias the result as score_range).

-- Find the name and company of movies whose gross revenue is higher than the average gross of all movies produced by 'Warner Bros.'.

-- Count how many movies each star has appeared in for each genre (Group by both star and genre).