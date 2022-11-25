-- @BLOCK
DROP TRIGGER patient_trigger;
-- @BLOCK
INSERT INTO patient VALUES (11,'Dhruv',21,'Andheri',7876539261,2);
INSERT INTO patient VALUES (12,'Vivek',20,'Dahisar',7876539261,2);
INSERT INTO patient VALUES (13,'Tathagat',19,'Colaba',7876539261,null);
INSERT INTO patient VALUES (14,'Rohit',34,'Dahisar',2375856987,null);
INSERT INTO patient VALUES (15,'Ankit',45,'Andheri',9865874411,null);
-- @BLOCK
CREATE trigger patient_trigger
BEFORE INSERT ON patient
FOR EACH ROW
BEGIN
IF NEW.Age<18 THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Age must be greater than 18';
END IF;
END;
-- @BLOCK
CREATE trigger doc_salary_trigger
BEFORE INSERT ON doctor
FOR EACH ROW
BEGIN
IF NEW.Salary<0 THEN
NEW.Salary=0;
END IF;
END;
-- @BLOCK
