USE db_proj;

-- Inserting data into Movie_People Table 

SELECT * FROM movie_people;

-- Inserting Writers to the Movie_People table. Their roles are actually assigned in the Production_People Table
-- The reason for that is because each person can assume more than one role in the same production
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P001', 'Stephen King', 73, 'Male'); 
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P002', 'Frank Dabaront', 62, 'Male'); 
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P003', 'Mario Puzo', 78, 'Male'); 
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P004', 'Francis Ford Coppola', 82, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P005', 'Jonathan Nolan', 44, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P006', 'Christopher Nolan', 50, 'Male');  
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P007', 'John Tolkien', 81, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P008', 'Fran Walsh', 62, 'Female');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P009', 'Peter Jackson', 59, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P010', 'Quentin Tarantino', 58, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P011', 'Roger Avary', 55, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P012', 'Thomas Keneally', 85, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P013', 'Steve Zaillian', 68, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P014', 'Bong Joon-ho', 51, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P015', 'Cary Fukunaga', 43, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P016', 'Simon Beaufoy', 54, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P017', 'Kyle Marvin', 32, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P018', 'Eric Roth', 76, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P019', 'Brad Bird', 63, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P020', 'Park Joo-suk', 45, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P021', 'Stephen Chow', 58, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P022', 'Anita Doron', 46, 'Female');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P023', 'Steven Conrad', 53, 'Male');
INSERT INTO movie_people (person_id, name, age, gender) VALUES ('P024', 'David Magee', 59, 'Male');