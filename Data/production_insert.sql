USE db_proj;

-- Inserting data into Production Table 

SELECT * FROM production;

-- Connecting the production to its movie and the publisher company
INSERT INTO production (production_id, movie_id, publisher_id) VALUES ('MP01', 'M001', 'PS01');
INSERT INTO production (production_id, movie_id, publisher_id) VALUES ('MP02', 'M002', 'PS02');
INSERT INTO production (production_id, movie_id, publisher_id) VALUES ('MP03', 'M005', 'PS03');
INSERT INTO production (production_id, movie_id, publisher_id) VALUES ('MP04', 'M015', 'PS04');
INSERT INTO production (production_id, movie_id, publisher_id) VALUES ('MP05', 'M332', 'PS05');
INSERT INTO production (production_id, movie_id, publisher_id) VALUES ('MP06', 'M444', 'PS06');
INSERT INTO production (production_id, movie_id, publisher_id) VALUES ('MP07', 'M232', 'PS07');