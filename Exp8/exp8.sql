-- @BLOCK
DROP TRIGGER patient_trigger;
DROP trigger doc_salary_trigger;
DROP TRIGGER pat_delete_trigger;
-- @BLOCK
INSERT INTO patient VALUES (11,'Dhruv',21,'Andheri',7876539261,2);
INSERT INTO patient VALUES (12,'Vivek',20,'Dahisar',7876539261,2);
INSERT INTO patient VALUES (13,'Tathagat',19,'Colaba',7876539261,null);
INSERT INTO patient VALUES (14,'Rohit',34,'Dahisar',2375856987,null);
INSERT INTO patient VALUES (15,'Ankit',45,'Andheri',9865874411,null);
-- @BLOCK
INSERT INTO patient VALUES (16,'Vanshika',17,'Andheri',9479574411,null);
-- @BLOCK
INSERT INTO doctor VALUES (13,'Dr. Rajesh',7876539261,-100,'Cardiologist','Andheri');
-- @BLOCK
UPDATE patient SET address='Andheri' WHERE P_id=5;
SELECT * FROM patient WHERE P_id=5;
-- @BLOCK
DELETE FROM patient WHERE P_id=5;
-- @BLOCK
DELETE FROM patient WHERE P_id=12;
-- @BLOCK
DELETE FROM doctor WHERE D_id=5;
SELECT * FROM doctor WHERE D_id=13;
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
SET NEW.Salary = 0;
END IF;
END;
-- @BLOCK
CREATE trigger pat_update_trigger
BEFORE UPDATE ON patient
FOR EACH ROW
BEGIN
IF NEW.address='Andheri' THEN
SET NEW.address='Andheri West';
END IF;
END;
-- @BLOCK
CREATE trigger pat_delete_trigger
BEFORE DELETE ON patient
FOR EACH ROW
BEGIN
If OLD.D_id is not null THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cannot delete patient as he is assigned to a doctor';
END IF;
END;
-- @BLOCK
CREATE trigger doc_delete_trigger
BEFORE DELETE ON doctor
FOR EACH ROW
BEGIN
If OLD.D_id in (SELECT D_id FROM patient) THEN
SIGNAL SQLSTATE '45000'
SET MESSAGE_TEXT = 'Cannot delete doctor as he is assigned to a patient';
END IF;
END;
-- @BLOCK
CREATE trigger del_trigger
AFTER DELETE ON patient
FOR EACH ROW
BEGIN
IF OLD.D_id is not null THEN
UPDATE doctor SET Salary=Salary+1000 WHERE D_id=OLD.D_id;
END IF;
END;