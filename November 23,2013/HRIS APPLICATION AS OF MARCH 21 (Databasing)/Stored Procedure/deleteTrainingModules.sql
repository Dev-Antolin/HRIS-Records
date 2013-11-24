DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`deleteTrainingModules` $$
CREATE PROCEDURE `hris`.`deleteTrainingModules` (IN cor_ID INT)
BEGIN
    DELETE FROM hris.rectrainingmodules WHERE CourseID = cor_ID;
END $$

DELIMITER ;