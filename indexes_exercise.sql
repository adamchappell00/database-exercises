
-- # 1 & 2
USE employees;
DESCRIBE departments;
DESCRIBE dept_emp;
DESCRIBE dept_manager;
DESCRIBE employees;
DESCRIBE salaries;
DESCRIBE titles;

-- # 3 & 4
USE codeup_test_db;
ALTER TABLE albums
ADD UNIQUE (artist, name);

-- TEST
INSERT INTO albums (artist, name, release_date, sales, genre)
VALUES ('Michael Jackson','Thriller',2005,10, 'Pop, post-disco, funk, rock'),
    ('Eagles','Hotel California',1976,31.5,'Soft Rock')

