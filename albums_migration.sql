USE codeup_test_db;
DROP TABLE IF EXISTS albums;
CREATE TABLE IF NOT EXISTS albums (
        id INT UNSIGNED NOT NULL AUTO_INCREMENT,
        artist VARCHAR(100) NOT NULL,
        name VARCHAR(100) NOT NULL,
        release_date INT NOT NULL DEFAULT '0000',
        sales FLOAT UNSIGNED,
        genre VARCHAR(50),
        PRIMARY KEY (id)
);