USE db_proj;

-- Select all reviews from movie 'The Dark Knight'
SELECT * FROM review
WHERE movie_id = 'M005';

-- Perform insertion to demonstrate trigger on review about ‘The Dark Knight’
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U7', 'M005', 80, '2017-03-28', 'This movie is awesome!');
SELECT movie_id, general_score FROM movie
WHERE movie_id = 'M005';

-- Demonstrates movieProduction View. Joins movie, production and movie_people tables together
SELECT * FROM movieProduction;

-- Demonstrates movieReviews View, Joins movie and review tables together
SELECT * FROM movieReviews;