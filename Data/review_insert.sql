USE db_proj;

-- Inserting data into Review Table 

SELECT * FROM db_proj.review;

-- Inserting review information from a user about a certain movie
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U7', 'M258', 96, '2017-03-28','Good ending! My favorite character is the rat');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U64','M204',91,'2009-01-6','Sad movie but amazing ending. Would love to go onto Who wants to be a millionaire one day');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U24','M116',90,'2001-08-01','A must watch if you love soccer and martial arts');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U54','M178',87,'2010-07-17','Confused the entire time but a lot of action');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U2121','M001',98,'2000-05-30','I loved Morgan Freeman in this movie');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U323','M002',97,'2000-02-07','A classic');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U20737','M005',94,'2008-12-07','Christain Bale is the best batman no cap');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U7','M002',97,'2001-04-21','Highly Recommend to watch.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U64','M002',95,'2000-05-30','Watched it three times this week.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U24','M002',99,'2002-10-07','This is my wife and I favorite movie.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U54','M002',98,'2000-02-10','The plot and actors that were casted make this the best movie.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U2121','M002',96,'2001-12-23','I want to go into a life of crime after watching this movie.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U323','M005',98,'2008-04-07','Batman is back.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U64','M005',93,'2009-10-15','Cant wait for the next movie to come out.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U24','M005',95,'2008-07-02','Christian Bale did a great job portraying batman. However, the best is Adam West.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U54','M005',90,'2010-01-24','A lot of action I highly recommend to watch it as soon as possible.');
INSERT INTO review(user_id, movie_id, score, date, comment) VALUES ('U2121','M005',99,'2009-09-13','The best movie that has come out this year.');
