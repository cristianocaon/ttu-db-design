USE db_proj;

-- Inserting data into Movie_People Table 

SELECT * FROM movie_people;

-- Inserting Directors and Producers to the Movie_People table. Their roles are actually assigned in the Production_People Table
-- The reason for that is because each person can assume more than one role in the same production
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P041', 'Niki Marvin', 52, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P042', 'Albert Ruddy', 91, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P043', 'Emma Thomas', 49, 'Female');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P044', 'Barrie Osborne', 77, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P045', 'Lawrence Bender', 63, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P046', 'Steven Spielberg', 74, 'Male');