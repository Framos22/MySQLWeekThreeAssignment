-- Drop DATABASE IF EXISTS FelixGram;
-- CREATE DATABASE FelixGram;
-- USE FelixGram;

CREATE table user(
user_id INT NOT NULL AUTO_INCREMENT,
username VARCHAR(25) NOT NULL,
email VARCHAR(25) NOT NULL,
password VARCHAR(25) NOT NULL,
birth_day VARCHAR(25) NOT NULL,

PRIMARY KEY(user_id) 

);

CREATE table posts(
posts_id INT(20) NOT NULL AUTO_INCREMENT,
user_id INT(20) NOT NUll,
poststimestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
posts VARCHAR(20) NOT NULL,

PRIMARY KEY(posts_id),
FOREIGN KEY(user_id) REFERENCES user(user_id)

);

CREATE table comments(
comments_id INT(15) NOT NULL AUTO_INCREMENT,
user_id INT(15) NOT NULL,
posts_id INT(15) NOT NULL,
comments_box VARCHAR(200) NOT NULL,
comments_timestamp TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

PRIMARY KEY(comments_id),
FOREIGN KEY(posts_id) REFERENCES posts(posts_id),
FOREIGN KEY(user_id) REFERENCES user(user_id)

);
