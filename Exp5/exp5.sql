-- @BLOCK
INSERT INTO doctor VALUES(10,"Dhruv",5672356257,50000,"Neurologist","Andheri");
INSERT INTO doctor VALUES(11,"Kaif",9348569346,100000,"dentist","Colaba");
INSERT INTO doctor VALUES(12,"Virinchi",9348569346,100000,"dentist","Bhayandar");

-- @BLOCK
UPDATE doctor SET Salary=400000 WHERE D_id=11;
UPDATE doctor SET Address="Marol" WHERE D_id=4;
-- @BLOCK
UPDATE doctor SET Address="Marol" WHERE D_id=1;
UPDATE doctor SET Address="Marol" WHERE D_id=5;
UPDATE doctor SET Address="Colaba" WHERE D_id=7;
UPDATE doctor SET Address="Colaba" WHERE D_id=8;
UPDATE doctor SET Address="Bhayandar" WHERE D_id=10;
-- @BLOCK
INSERT INTO patient VALUES(10,"Husain",21,"Marol",1234567890,4);
-- @BLOCK
SELECT MIN(Salary) AS "Least-Salary" FROM doctor WHERE D_id<5;
-- @BLOCK
SELECT MAX(Salary) AS "Highest-Salary Doctor From Andheri" FROM doctor WHERE Address="Andheri";
-- @BLOCK
SELECT MAX(Age) AS "Oldest Patient" FROM patient WHERE D_id>0;
-- @BLOCK
SELECT MIN(Age) AS "Youngest Patient from Marol" FROM patient WHERE Address="Marol";
-- @BLOCK
SELECT Address,AVG(Salary) AS "Average" FROM doctor GROUP BY Address;
-- @BLOCK
SELECT * FROM (SELECT Field,SUM(Salary) AS "Total" FROM doctor GROUP BY Field) AS Employee WHERE Total>400000;
-- @BLOCK
SELECT * FROM (SELECT Address,SUM(Salary) AS "Total" FROM doctor GROUP BY Address) AS Employee WHERE Total>40000;
-- @BLOCK
SELECT COUNT(P_id) AS "No. of Patients Without Doctors" FROM patient WHERE D_id IS NULL;
-- @BLOCK
SELECT COUNT(P_id) AS "No. of Patients With Doctors" FROM patient WHERE D_id>0;