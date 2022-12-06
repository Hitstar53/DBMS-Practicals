-- @BLOCK
UPDATE patient SET D_id=NULL WHERE P_id>=6;
-- @BLOCK INNER JOIN
SELECT patient.P_id,patient.Pname,patient.Age,doctor.Dname,doctor.Field
FROM patient
INNER JOIN doctor
ON patient.D_id = doctor.D_id;
-- @BLOCK LEFT JOIN
SELECT patient.P_id,patient.Pname,patient.Age,doctor.Dname,doctor.Field
FROM patient
LEFT JOIN doctor
ON patient.D_id = doctor.D_id
ORDER BY patient.Age;
-- @BLOCK RIGHT JOIN
SELECT patient.P_id,patient.Pname,patient.Age,doctor.Dname,doctor.Field
FROM patient
RIGHT JOIN doctor
ON patient.D_id = doctor.D_id
ORDER BY patient.Age;
-- @BLOCK CROSS JOIN
SELECT patient.P_id,patient.Pname,patient.Age,doctor.Dname,doctor.Field
FROM patient
CROSS JOIN doctor;
-- @BLOCK
SELECT * FROM patient FULL JOIN doctor;