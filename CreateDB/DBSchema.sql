# Create the dev ops quiz tables and dev ops images

CREATE TABLE devopsquiz (
 id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 question VARCHAR(50) NOT NULL,
 answer BOOLEAN DEFAULT NULL,
 description VARCHAR(500) NOT NULL,
 ) 

CREATE TABLE devopsimages (
 id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
 image LONGBLOB NOT NULL,
)


