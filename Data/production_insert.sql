USE db_proj;

SELECT * FROM production;

select * from production
where production_id = 'MP01';

INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP01', 'W001', 'M001', 'Writer', 'PS01');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP01', 'W002', 'M001', 'Writer', 'PS01');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP02', 'W003', 'M002', 'Writer', 'PS02');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP02', 'W004', 'M002', 'Writer', 'PS02');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP03', 'W005', 'M005', 'Writer', 'PS03');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP03', 'W006', 'M005', 'Writer', 'PS03');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP04', 'W003', 'M015', 'Writer', 'PS04');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP04', 'W004', 'M015', 'Writer', 'PS04');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP05', 'W007', 'M332', 'Writer', 'PS05');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP05', 'W008', 'M332', 'Writer', 'PS05');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP06', 'W010', 'M444', 'Writer', 'PS06');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP06', 'W011', 'M444', 'Writer', 'PS06');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP07', 'W012', 'M232', 'Writer', 'PS07');
INSERT INTO production (production_id, person_id, movie_id, role, publisher_id) VALUES ('MP07', 'W013', 'M232', 'Writer', 'PS07');