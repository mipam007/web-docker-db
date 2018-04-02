CREATE DATABASE reviews;

USE REVIEWS;

CREATE TABLE user_review (
  id MEDIUMINT NOT NULL AUTO_INCREMENT PRIMARZ KEY,
  reviewer_name CHAR(100),
  star_rating TINYINT,
  details VARCHAR(4000)
  );

GRANT ALL PRIVILEGES ON *.* TO 'hodnoceni'@'%' WITH GRANT OPTION;
UPDATE user SET password=PASSWORD("hodnoceni") WHERE user='hodnoceni';
FLUSH PRIVILEGES;
