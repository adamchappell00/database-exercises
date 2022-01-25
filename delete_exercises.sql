USE codeup_test_db;

SELECT 'All Albums released after 1991' AS 'Caption';
DELETE FROM albums WHERE release_date > 1991;

SELECT 'All Disco Albums' AS 'Caption';
DELETE FROM albums WHERE genre = 'Disco';

SELECT 'All Albums by ''Whitney Houston''' AS 'Caption';
DELETE FROM albums WHERE artist = 'Whitney Houston';

SELECT * FROM albums;