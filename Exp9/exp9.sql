-- @block
SELECT DATE('2003-01-28 08:20:53') AS date;
SELECT TIME('2003-01-28 08:20:53') AS time;
-- @block
SELECT CURDATE();
SELECT CURTIME();
SELECT NOW();
-- @block
SELECT DATE_ADD('2003-01-29', INTERVAL 3 DAY) AS newDate;
SELECT DATE_SUB('2004-03-03', INTERVAL 4 DAY) AS newDate;
-- @block
SELECT DAYNAME('2003-01-28') AS Day;
SELECT MONTHNAME('2003-01-28') AS Month;
SELECT WEEK('2003-01-28') AS Week;
SELECT QUARTER('2003-01-28') AS Quarter;
-- @block
SELECT DATE_FORMAT('2003-01-28', '%W %M %D %Y') AS Format1;
SELECT DATE_FORMAT('2003-01-28', '%m-%d-%Y') AS Format2;
SELECT DATE_FORMAT('2003-01-28', '%Y-%m-%d %H:%i:%s') AS Format3;
-- @block
ALTER TABLE patient ADD COLUMN birthdate DATE AFTER Age;
UPDATE patient SET birthdate = '2003-01-28';
UPDATE patient SET birthdate = '2004-03-26' WHERE P_id=6;
SELECT Pname,birthdate FROM patient WHERE P_id=6;
SELECT Pname,DATE_FORMAT(birthdate,'%W %M %D %Y') AS birthdate FROM patient WHERE P_id=6;
  