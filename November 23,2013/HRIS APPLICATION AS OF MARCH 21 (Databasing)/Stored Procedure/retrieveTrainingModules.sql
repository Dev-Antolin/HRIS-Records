DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`retrieveTrainingModules` $$
CREATE PROCEDURE `hris`.`retrieveTrainingModules` (IN cor_ID INT)
BEGIN
    IF cor_id <=0 then
        SELECT * FROM hris.rectrainingmodules;
    ELSE
        SELECT * FROM hris.rectrainingmodules WHERE CourseID = cor_ID;
    END IF;
END $$

DELIMITER ;