-- @BLOCK view creation
CREATE VIEW patient_ages AS 
SELECT P_id,Pname,Age 
FROM patient;
-- @BLOCK
CREATE VIEW doctor_details AS 
SELECT Dname,Salary,Field 
FROM doctor;
-- @BLOCK
CREATE VIEW patient_doctor AS 
SELECT patient.P_id,patient.Pname,doctor.Dname,doctor.D_id 
FROM doctor,patient 
WHERE doctor.D_id=patient.D_id;
-- @BLOCK view selection
SELECT * FROM patient_ages;
SELECT * FROM doctor_details;
SELECT * FROM patient_doctor;
-- @BLOCK view updation
CREATE OR REPLACE VIEW patient_ages AS 
SELECT P_id,Pname,Age 
FROM patient;
-- @BLOCK
CREATE OR REPLACE VIEW doctor_details AS 
SELECT D_id,Dname,Salary,Field 
FROM doctor;
-- @BLOCK
CREATE OR REPLACE VIEW pd_alt AS 
SELECT patient.Pname,doctor.Dname 
FROM patient CROSS JOIN doctor;
-- @BLOCK view deletion
DROP VIEW patient_ages;
DROP VIEW doctor_details;
DROP VIEW patient_doctor;
DROP VIEW pd_alt;