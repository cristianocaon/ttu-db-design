USE db_proj;

-- Inserting data into Movie_People Table 

SELECT * FROM movie_people;

-- Inserting Actors to the Movie_People table. Their roles are actually assigned in the Production_People Table
-- The reason for that is because each person can assume more than one role in the same production
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P025', 'Marlon Brando', 80, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P026', 'Al Pacino', 81, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P027', 'James Caan', 81, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P028', 'Richard Castellano', 50, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P029', 'Robert Duvall', 90, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P030', 'Sterling Hayden', 40, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P031', 'John Marley', 55, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P032', 'Richard Conte', 65, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P033', 'Diane Keaton', 35, 'Female');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P034', 'Christian Bale', 47, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P035', 'Michael Caine', 88, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P036', 'Heath Ledger', 28, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P037', 'Gary Oldman', 63, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P038', 'Aaron Eckart', 53, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P039', 'Maggie Gyllenhaal', 32, 'Female');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P040', 'Morgan Freeman', 83, 'Male');