USE db_proj;

-- Creating Movie Table
-- Provides information about movies from the application
CREATE TABLE `db_proj`.`movie` (
  `movie_id` VARCHAR(10) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  `release_date` DATE NOT NULL,
  `language` VARCHAR(25) NULL,
  `length` INT NOT NULL,
  `age_rating` VARCHAR(10) NOT NULL,
  `genre` VARCHAR(45) NULL,
  `general_score` INT NULL,
  PRIMARY KEY (`movie_id`));
  
-- Trigger to update movie score after new review insertion
DELIMITER $$
CREATE TRIGGER update_movie_score
AFTER INSERT ON review FOR EACH ROW
BEGIN
	DECLARE average_score INT;
    
    SELECT AVG(score) INTO average_score
	FROM review r
	WHERE r.movie_id = NEW.movie_id;
	
    UPDATE movie m
	SET general_score = average_score
	WHERE m.movie_id = NEW.movie_id;
		
END$$
DELIMITER ;

-- Trigger to update movie score after a review deletion
DELIMITER $$
CREATE TRIGGER update_movie_score_delete
AFTER DELETE ON review FOR EACH ROW
BEGIN
	DECLARE average_score INT;
    
    SELECT AVG(score) INTO average_score
	FROM review r
	WHERE r.movie_id = OLD.movie_id;
	
    UPDATE movie m
	SET general_score = average_score
	WHERE m.movie_id = OLD.movie_id;
		
END$$
DELIMITER ;

-- Creating User Table
-- Provides information about each registered user
CREATE TABLE `db_proj`.`user` (
  `user_id` VARCHAR(10) NOT NULL,
  `username` VARCHAR(25) NOT NULL,
  `age` INT NULL,
  `email` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(15) NULL,
  PRIMARY KEY (`user_id`));
  
-- Creating Review Table 
-- Provides information about the reviews provided from a user about a movie
CREATE TABLE `db_proj`.`review` (
  `user_id` VARCHAR(10) NOT NULL,
  `movie_id` VARCHAR(10) NOT NULL,
  `score` INT NOT NULL,
  `date` DATE NOT NULL,
  `comment` VARCHAR(255) NULL,
  PRIMARY KEY (`user_id`, `movie_id`));

-- Adding Foreign Key Contraint to Review Table, referencing user_id from User Table
-- Connects Review to User
ALTER TABLE `db_proj`.`review`
ADD CONSTRAINT FK_UserReview
FOREIGN KEY (user_id) REFERENCES `db_proj`.`user`(user_id);

-- Adding Foreign Key Contraint to Review Table, referencing movie_id from Movie Table  
-- Connects Review to Movie
ALTER TABLE `db_proj`.`review`
ADD CONSTRAINT FK_MovieReview
FOREIGN KEY (movie_id) REFERENCES `db_proj`.`movie`(movie_id);

-- Creating Publisher Table
-- Provides information about publisher companies 
CREATE TABLE `db_proj`.`publisher` (
  `publisher_id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`publisher_id`));

-- Creating Movie_People Table
-- Provides information about the people involved in the production of movies, 
-- 		e.g. actors, directors, writers and producers
CREATE TABLE `db_proj`.`movie_people` (
  `person_id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(45) NULL,
  `age` INT NULL,
  `gender` VARCHAR(15) NULL,
  PRIMARY KEY (`person_id`));

-- Creating Production Table
-- Provides information about the production, the movie and the publisher involved
CREATE TABLE `db_proj`.`production` (
  `production_id` VARCHAR(10) NOT NULL,
  `movie_id` VARCHAR(10) NOT NULL,
  `publisher_id` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`production_id`));

-- Adding Foreign Key Contraint to Production Table, referencing movie_id from Movie Table
-- Connects Production to Movie
ALTER TABLE `db_proj`.`production`
ADD CONSTRAINT FK_MovieProduction
FOREIGN KEY (movie_id) REFERENCES `db_proj`.`movie`(movie_id);

-- Adding Foreign Key Contraint to Production Table, referencing publisher_id from Publisher Table
-- Connects Production to Publisher
ALTER TABLE `db_proj`.`production`
ADD CONSTRAINT FK_PublisherProduction
FOREIGN KEY (publisher_id) REFERENCES `db_proj`.`publisher`(publisher_id);

-- Creates Production_People Table
-- Serves as a middleware between Production and Movie_People
-- Provides information about all the movie people involved in a certain production, and their roles
CREATE TABLE `db_proj`.`production_people` (
  `production_id` VARCHAR(10) NOT NULL,
  `person_id` VARCHAR(10) NOT NULL,
  `role` VARCHAR(15) NULL,
  PRIMARY KEY (`production_id`, `person_id`, `role`));

-- Adding Foreign Key Contraint to Production_People Table, referencing production_id from Production Table
-- Connects Production_People to Production
ALTER TABLE `db_proj`.`production_people`
ADD CONSTRAINT FK_ProductionProductionPeople
FOREIGN KEY (production_id) REFERENCES `db_proj`.`production` (production_id);

-- Adding Foreign Key Contraint to Production_People Table, referencing person_id from Movie_People Table
-- Connects Production_People to Movie_People
ALTER TABLE `db_proj`.`production_people`
ADD CONSTRAINT FK_MoviePeopleProductionPeople
FOREIGN KEY (person_id) REFERENCES `db_proj`.`movie_people` (person_id);

DROP VIEW movieProduction;

-- Creating a view to display information about the production of a movie
-- Joins together the tables 
CREATE VIEW movieProduction
AS
SELECT mp.name, pp.role, p.production_id, m.title, ps.name AS publisher
FROM movie_people mp, production_people pp, production p, movie m, publisher ps
WHERE m.movie_id = p.movie_id AND p.production_id = pp.production_id AND p.publisher_id = ps.publisher_id AND pp.person_id = mp.person_id
ORDER BY p.production_id;

-- Creating a view to display information all the reviews and comments from movies
-- Joins together the tables Movie and Review
CREATE VIEW movieReviews
AS
SELECT m.movie_id, m.title, m.general_score, r.user_id, r.comment, r.score
FROM movie m, review r
WHERE m.movie_id = r.movie_id
ORDER BY m.movie_id;

-- Creting Index on title of Movie Table 
CREATE UNIQUE INDEX MOVIE_TITLE ON movie (title);

-- Creting Index on score of Movie Table
CREATE INDEX MOVIE_SCORE ON movie (general_score);

-- Creting Index on comment of Review Table
CREATE INDEX REVIEW_COMMENT ON review (comment);

-- Creting Index on score of Review Table
CREATE INDEX REVIEW_SCORE ON review (score);