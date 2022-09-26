-- @BLOCK
DROP TABLE patient;
DROP TABLE doctor;
-- @BLOCK
SELECT * FROM patient;
-- @BLOCK
SELECT * FROM doctor;
-- @BLOCK
CREATE TABLE Doctor ( 
    D_id int primary key, 
    Dname varchar(30), 
    Address varchar(30), 
    Ph_no bigint, 
    Salary int, 
    Field varchar(50) 
);
CREATE TABLE Patient ( 
    P_id int primary key, 
    Pname varchar(30), 
    Age int, 
    Address varchar(30), 
    Ph_no bigint, 
    D_id int, 
    FOREIGN KEY (D_id) REFERENCES Doctor(D_id) 
);
-- @BLOCK
INSERT INTO doctor VALUES (1, 'akash', 'Andheri',5748364582, 500000, 'Cardiologist');
INSERT INTO doctor VALUES (2, 'pramod', 'Parel',8965735643, 720000, 'Neurologist');
INSERT INTO doctor VALUES (3, 'hansraj', 'Colaba',6758392011, 200000, 'Orthopedic');
INSERT INTO doctor VALUES (4, 'ritu', 'Santacruz',9876567814, 350000, 'dermatologist');
INSERT INTO doctor VALUES (5, 'viraj', 'Marol',7898657788, 100000, 'dentist');
INSERT INTO doctor VALUES (6, 'rohit', 'bhayandar',9956443218, 560000, 'ophthalmologist');
INSERT INTO doctor VALUES (7, 'Iyer', 'Dahisar',9887854563, 320000, 'gynecologist');
INSERT INTO doctor VALUES (8, 'sachin', 'Bandra',9876543210, 450000, 'pediatrician');
INSERT INTO doctor VALUES (9, 'sagar', 'Borivali',9876543210, 450000, 'pediatrician');
-- @BLOCK
INSERT INTO patient VALUES (1, 'Rahul', 25, 'Andheri', 9876543210, 1);
INSERT INTO patient VALUES (2, 'Raj', 30, 'Parel', 9876543210, 2);
INSERT INTO patient VALUES (3, 'Pranay', 35, 'Colaba', 9876543210, 3);
INSERT INTO patient VALUES (4, 'Dev', 40, 'Santacruz', 9876543210, 4);
INSERT INTO patient VALUES (5, 'Hatim', 45, 'Marol', 9876543210, 5);
INSERT INTO patient VALUES (6, 'Virinchi', 50, 'bhayandar', 9876543210, 6);
INSERT INTO patient VALUES (7, 'Udit', 55, 'Dahisar', 9876543210, 7);
INSERT INTO patient VALUES (8, 'Kaif', 60, 'Bandra', 9876543210, 8);
INSERT INTO patient VALUES (9, 'Anish', 65, 'Borivali', 9876543210, 9);
-- @BLOCK
