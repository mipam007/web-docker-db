CREATE DATABASE reviews;

USE reviews;

CREATE TABLE user_review (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  reviewer_name CHAR(100),
  star_rating TINYINT,
  details VARCHAR(4000)
  );

GRANT ALL ON reviews.* to 'hodnoceni'@'localhost' IDENTIFIED BY 'hodnoceni';
GRANT ALL ON reviews.* to 'hodnoceni'@'%' IDENTIFIED BY 'hodnoceni';
FLUSH PRIVILEGES;
