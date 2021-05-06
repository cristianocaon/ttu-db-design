USE db_proj;

-- Inserting data into Production_People Table

SELECT * FROM production_people;

-- Connecting Writers for each Production
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP01', 'P001', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP01', 'P002', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P003', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P004', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P005', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P006', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP04', 'P003', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP04', 'P004', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP05', 'P007', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP05', 'P008', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP06', 'P010', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP06', 'P011', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP07', 'P012', 'Writer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP07', 'P013', 'Writer');

-- Connecting Actors for each Production
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P025', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P026', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P027', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P028', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P029', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P030', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P031', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P032', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P033', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P034', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P035', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P036', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P037', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P038', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P039', 'Actor');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P040', 'Actor');

-- Connecting Directors for each Production
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP01', 'P002', 'Director');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P004', 'Director');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P006', 'Director');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP04', 'P004', 'Director');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP05', 'P009', 'Director');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP06', 'P010', 'Director');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP07', 'P046', 'Director');

-- Connecting Producers for each Production
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP01', 'P041', 'Producer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP02', 'P042', 'Producer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP03', 'P043', 'Producer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP04', 'P004', 'Producer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP05', 'P044', 'Producer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP06', 'P045', 'Producer');
INSERT INTO production_people (production_id, person_id, role) VALUES ('MP07', 'P046', 'Producer');