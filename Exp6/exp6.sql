-- @BLOCK
SELECT * FROM doctor 
WHERE Salary=(SELECT MIN(Salary) FROM doctor) 
OR Salary=(SELECT MAX(Salary) FROM doctor);
-- @BLOCK
SELECT * FROM patient 
WHERE D_id=(SELECT D_id FROM doctor 
WHERE Salary=(SELECT MAX(Salary) FROM doctor));
-- @BLOCK
SELECT * FROM patient 
WHERE D_id IN (SELECT D_id FROM doctor 
WHERE Address="Colaba");
-- @BLOCK
SELECT COUNT(P_id) FROM patient 
WHERE D_id IN (SELECT D_id FROM doctor 
WHERE Address=patient.Address);
-- @BLOCK
SELECT * FROM patient 
WHERE D_id IN (SELECT D_id FROM doctor WHERE Salary>50000);
-- @BLOCK
SELECT MAX(Age) FROM patient 
WHERE D_id IN (SELECT D_id FROM doctor 
WHERE Salary>50000) 
GROUP BY D_id;
-- @BLOCK
SELECT Address,MIN(Salary) FROM doctor 
WHERE Address IN (SELECT Address FROM patient 
WHERE Address=doctor.Address) 
GROUP BY Address;
-- @BLOCK
SELECT MAX(Salary) FROM (SELECT Address,AVG(Salary) FROM doctor GROUP BY Address);
-- @BLOCK
SELECT Address,MAX(Salary) FROM doctor 
WHERE Address IN (SELECT Address FROM patient 
WHERE Address=doctor.Address) 
GROUP BY Address;
-- @BLOCK
UPDATE patient SET D_id=1 WHERE P_id=9;
