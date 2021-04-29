USE db_proj;

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

CREATE TABLE `db_proj`.`user` (
  `user_id` VARCHAR(10) NOT NULL,
  `username` VARCHAR(25) NOT NULL,
  `age` INT NULL,
  `email` VARCHAR(45) NOT NULL,
  `gender` VARCHAR(15) NULL,
  PRIMARY KEY (`user_id`));
  
  CREATE TABLE `db_proj`.`review` (
  `user_id` VARCHAR(10) NOT NULL,
  `movie_id` VARCHAR(10) NOT NULL,
  `score` INT NOT NULL,
  `date` DATE NOT NULL,
  `comment` VARCHAR(255) NULL,
  PRIMARY KEY (`user_id`, `movie_id`));
  
ALTER TABLE `db_proj`.`review`
ADD CONSTRAINT FK_UserReview
FOREIGN KEY (user_id) REFERENCES `db_proj`.`user`(user_id);
  
ALTER TABLE `db_proj`.`review`
ADD CONSTRAINT FK_MovieReview
FOREIGN KEY (movie_id) REFERENCES `db_proj`.`movie`(movie_id);

CREATE TABLE `db_proj`.`publisher` (
  `publisher_id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `location` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`publisher_id`));

CREATE TABLE `db_proj`.`movie_people` (
  `person_id` VARCHAR(10) NOT NULL,
  `name` VARCHAR(45) NULL,
  `age` INT NULL,
  `gender` VARCHAR(15) NULL,
  PRIMARY KEY (`person_id`));

CREATE TABLE `db_proj`.`production` (
  `production_id` VARCHAR(10) NOT NULL,
  `person_id` VARCHAR(10) NOT NULL,
  `movie_id` VARCHAR(10) NOT NULL,
  `role` VARCHAR(15) NOT NULL,
  `publisher_id` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`production_id`, `person_id`, `movie_id`));

ALTER TABLE `db_proj`.`production`
ADD CONSTRAINT FK_PersonProduction
FOREIGN KEY (person_id) REFERENCES `db_proj`.`movie_people`(person_id);

ALTER TABLE `db_proj`.`production`
ADD CONSTRAINT FK_MovieProduction
FOREIGN KEY (movie_id) REFERENCES `db_proj`.`movie`(movie_id);

ALTER TABLE `db_proj`.`production`
ADD CONSTRAINT FK_PublisherProduction
FOREIGN KEY (publisher_id) REFERENCES `db_proj`.`publisher`(publisher_id);

CREATE VIEW movieProduction
AS
SELECT mp.name, p.role, p.production_id, m.title
FROM movie_people mp, production p, movie m
WHERE m.movie_id = p.movie_id AND p.person_id = mp.person_id
ORDER BY p.production_id;

SELECT * FROM movieProduction;

CREATE VIEW movieReviews
AS
SELECT m.movie_id, m.title, m.general_score, r.user_id, r.comment, r.score
FROM movie m, review r
WHERE m.movie_id = r.movie_id
ORDER BY m.movie_id;

SELECT * FROM movieReviews;
