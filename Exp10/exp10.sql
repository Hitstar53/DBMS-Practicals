CREATE TABLE hospital (
    P_id int primary key,
    Pname varchar(30) NOT NULL,
    Age int NOT NULL,
    Ph_no varchar(255) NOT NULL,
    Address varchar(30) NOT NULL
);
INSERT INTO hospital VALUES(1, 'Akshat', 20, '7236473256,3528475869', 'Delhi');
INSERT INTO hospital VALUES(2, 'Rohan', 25, '7236473256,3528475869', 'Mumbai');
INSERT INTO hospital VALUES(3, 'Tanvi', 30, '7236473256,3528475869', 'Kolkata');
INSERT INTO hospital VALUES(4, 'Shubham', 35, '7236473256,3528475869', 'gurgoan');
INSERT INTO hospital VALUES(5, 'Suhail', 40, '7236473256,3528475869', 'Delhi');
-- @block Normalization 1NF
CREATE TABLE hospital1nf (
    P_id int NOT NULL,
    Pname varchar(30) NOT NULL,
    Age int NOT NULL,
    Ph_no bigint NOT NULL,
    Address varchar(30) NOT NULL
);
INSERT INTO hospital1nf VALUES(1, 'Akshat', 20, 7236473256, 'Delhi');
INSERT INTO hospital1nf VALUES(1, 'Akshat', 20, 9652502364, 'Delhi');
INSERT INTO hospital1nf VALUES(2, 'Rohan', 25, 7236473256, 'Mumbai');
INSERT INTO hospital1nf VALUES(2, 'Rohan', 25, 9854726638, 'Mumbai');
INSERT INTO hospital1nf VALUES(3, 'Tanvi', 30, 7236473256, 'Kolkata');
INSERT INTO hospital1nf VALUES(3, 'Tanvi', 30, 8694627846, 'Kolkata');
INSERT INTO hospital1nf VALUES(4, 'Shubham', 35, 7236473256, 'gurgoan');
INSERT INTO hospital1nf VALUES(5, 'Suhail', 40, 7236473256, 'Delhi');
-- @block Normalization 2NF
CREATE TABLE hospital2nf (
    P_id int NOT NULL,
    D_id int NOT NULL,
    Pname varchar(30) NOT NULL,
    Dname varchar(30) NOT NULL
);
CREATE TABLE patient2nf (
    P_id int PRIMARY KEY NOT NULL,
    Pname varchar(30) NOT NULL
);
CREATE TABLE doctor2nf (
    D_id int NOT NULL PRIMARY KEY,
    Dname varchar(30) NOT NULL
);
INSERT INTO hospital2nf VALUES(1, 1, 'Akshat', 'Dr. Askhat');
INSERT INTO hospital2nf VALUES(2, 2, 'Rohan', 'Dr. Rohan');
INSERT INTO hospital2nf VALUES(3, 3, 'Tanvi', 'Dr. Tanvi');
INSERT INTO hospital2nf VALUES(4, 4, 'Shubham', 'Dr. Shubham');
INSERT INTO hospital2nf VALUES(5, 5, 'Suhail', 'Dr. Suhail');
INSERT INTO patient2nf VALUES(1, 'Akshat');
INSERT INTO patient2nf VALUES(2, 'Rohan');
INSERT INTO patient2nf VALUES(3, 'Tanvi');
INSERT INTO patient2nf VALUES(4, 'Shubham');
INSERT INTO patient2nf VALUES(5, 'Suhail');
INSERT INTO doctor2nf VALUES(1, 'Dr. Askhat');
INSERT INTO doctor2nf VALUES(2, 'Dr. Rohan');
INSERT INTO doctor2nf VALUES(3, 'Dr. Tanvi');
INSERT INTO doctor2nf VALUES(4, 'Dr. Shubham');
INSERT INTO doctor2nf VALUES(5, 'Dr. Suhail');
-- @block Normalization 3NF
CREATE TABLE hospital3nf (
    P_id int NOT NULL,
    Pname varchar(30) NOT NULL,
    D_id int NOT NULL,
    Dname varchar(30) NOT NULL,
    Ph_no bigint NOT NULL,
    Address varchar(30) NOT NULL
);
CREATE TABLE patient3nf (
    P_id int NOT NULL PRIMARY KEY,
    Pname varchar(30) NOT NULL,
    D_id int NOT NULL,
    Ph_no bigint NOT NULL,
    Address varchar(30) NOT NULL
);
CREATE TABLE doctor3nf (
    D_id int NOT NULL PRIMARY KEY,
    Dname varchar(30) NOT NULL
);
INSERT INTO hospital3nf VALUES(1, 'Akshat', 1, 'Dr. Askhat', 7236473256, 'Delhi');
INSERT INTO hospital3nf VALUES(2, 'Rohan', 2, 'Dr. Rohan', 7236473256, 'Mumbai');
INSERT INTO hospital3nf VALUES(3, 'Tanvi', 3, 'Dr. Tanvi', 7236473256, 'Kolkata');
INSERT INTO hospital3nf VALUES(4, 'Shubham', 4, 'Dr. Shubham', 7236473256, 'gurgoan');
INSERT INTO hospital3nf VALUES(5, 'Suhail', 5, 'Dr. Suhail', 7236473256, 'Delhi');
INSERT INTO patient3nf VALUES(1, 'Akshat', 1, 7236473256, 'Delhi');
INSERT INTO patient3nf VALUES(2, 'Rohan', 2, 7236473256, 'Mumbai');
INSERT INTO patient3nf VALUES(3, 'Tanvi', 3, 7236473256, 'Kolkata');
INSERT INTO patient3nf VALUES(4, 'Shubham', 4, 7236473256, 'gurgoan');
INSERT INTO patient3nf VALUES(5, 'Suhail', 5, 7236473256, 'Delhi');
INSERT INTO doctor3nf VALUES(1, 'Dr. Askhat');
INSERT INTO doctor3nf VALUES(2, 'Dr. Rohan');
INSERT INTO doctor3nf VALUES(3, 'Dr. Tanvi');
INSERT INTO doctor3nf VALUES(4, 'Dr. Shubham');
INSERT INTO doctor3nf VALUES(5, 'Dr. Suhail');
-- @block Normalization BCNF

