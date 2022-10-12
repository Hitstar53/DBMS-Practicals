-- @BLOCK
INSERT INTO doctor VALUES(10,"Dhruv","Andheri",5672356257,50000,"Neurologist");
INSERT INTO doctor VALUES(11,"Kaif","Colaba",9348569346,100000,"dentist");
INSERT INTO doctor VALUES(12,"Virinchi","Bhayandar",9348569346,100000,"dentist");

-- @BLOCK
UPDATE doctor SET Salary=400000 WHERE D_id=11;
UPDATE doctor SET Address="Marol" WHERE D_id=4;
-- @BLOCK
SELECT MIN(Salary) AS "Least-Salary" FROM doctor WHERE D_id<5;
-- @BLOCK
SELECT Address,AVG(Salary) AS "Average" FROM doctor WHERE D_id<7 GROUP BY Address;
-- @BLOCK
SELECT * FROM (SELECT Field,SUM(Salary) AS "Total" FROM doctor GROUP BY Field) AS Employee WHERE Total>400000;
-- @BLOCK
SELECT COUNT()