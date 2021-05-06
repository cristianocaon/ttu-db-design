USE db_proj;

-- Queries to test the functionality of the database

-- Gathering score for movie with id 'M005'
SELECT movie_id, title, general_score FROM movie
WHERE movie_id = 'M005';

-- Gathering reviews for the movie with id 'M005'
SELECT * FROM review
WHERE movie_id = 'M005';

-- Demonstrating trigger after inserting a review about movie 'M005' 
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U7', 'M005', 60, '2017-03-28', 'Ive seen better ones...');

-- Gathering score for movie with id 'M005' again. Notice updated score for the movie after insertion
SELECT movie_id, title, general_score FROM movie
WHERE movie_id = 'M005';

-- Demonstrating trigger after deletion of a review about movie 'M005' 
DELETE FROM review
WHERE movie_id = 'M005' AND user_id = 'U7';

-- Gathering score for movie with id 'M005' again. Notice updated score for the movie after deletion
SELECT movie_id, title, general_score FROM movie
WHERE movie_id = 'M005';

-- Demonstrating movieProduction View. Joins movie, production, movie_people, publisher and production_people and tables together
-- Shows all information about the production of a movie. In this case, showing productions 'MP02' and 'MP03'
SELECT * FROM movieProduction
WHERE production_id IN ('MP02', 'MP03');

-- Demonstrating movieReviews View, Joins movie and review tables together
-- Shows all reviews about a given movie. In this case, showing reviews for movies 'M002' and 'M005'
SELECT * FROM movieReviews
WHERE movie_id IN ('M002', 'M005');