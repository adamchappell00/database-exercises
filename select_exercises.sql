USE codeup_test_db;

SELECT 'All Albums by ''Pink Floyd''' AS 'Caption';
SELECT name FROM albums WHERE artist = 'Pink Floyd';

SELECT 'The Year Sgt Pepper''s Lonely Hearts Club Band was released' AS 'Caption';
SELECT release_date FROM albums WHERE name = 'Sgt. Pepper''s Lonely Hearts Club Band';

SELECT 'Genre for ''Nevermind''' AS 'Caption';
SELECT genre FROM albums WHERE name = 'Nevermind';

SELECT '90s Music' AS 'Caption';
SELECT * FROM albums WHERE release_date BETWEEN 1989 AND 2000;

SELECT 'Under 20 million certified copies sold.' AS 'Caption';
SELECT * FROM albums WHERE sales < 20;

SELECT 'Rock Genre' AS 'Caption';
SELECT * FROM albums WHERE genre = 'Rock';
