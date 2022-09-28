-- @BLOCK
SELECT patient.Pname,patient.Age,doctor.Dname,doctor.Field
FROM patient
INNER JOIN doctor
ON patient.D_id = doctor.D_id;
-- @BLOCK
UPDATE patient SET D_id=NULL WHERE P_id=6;