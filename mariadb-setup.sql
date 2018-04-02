CREATE DATABASE reviews;

USE reviews;

CREATE TABLE user_review (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  reviewer_name CHAR(100),
  star_rating TINYINT,
  details VARCHAR(4000)
  );

CREATE USER 'hodnoceni'@'%' IDENTIFIED BY 'hodnoceni';
GRANT ALL ON *.* TO 'hodnoceni'@'%';

FLUSH PRIVILEGES;
