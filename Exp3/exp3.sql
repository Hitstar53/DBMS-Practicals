-- @BLOCK
SELECT * FROM doctor;
-- @BLOCK
ALTER TABLE doctor DROP Address;
-- @BLOCK
ALTER TABLE doctor ADD Address VARCHAR(50);
UPDATE doctor SET Address = 'Andheri' WHERE D_id<=5;
UPDATE doctor SET Address = 'Andheri';
-- @BLOCK
SELECT D_id, Dname,Salary FROM doctor WHERE Salary>400000 ORDER BY Salary DESC;
SELECT P_id,Pname,Age,Address FROM patient WHERE Pname like 'r%' ORDER BY Age DESC;
-- @BLOCK
SELECT Pname,Address,Ph_no FROM patient WHERE Address like 'b%' OR Address like '%z';