CREATE DATABASE cryptodb;
USE cryptodb;
-- @BLOCK
CREATE TABLE users (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    username VARCHAR(200) NOT NULL,
    email VARCHAR(200) NOT NULL UNIQUE,
    phone VARCHAR(200) NOT NULL,
    address VARCHAR(200) NOT NULL,
    password VARCHAR(200) NOT NULL
);
-- @BLOCK
INSERT INTO cryptodb.users VALUES(1,'Will Smith','will@gmail.com','+2348123456789','New York, USA','123456');


