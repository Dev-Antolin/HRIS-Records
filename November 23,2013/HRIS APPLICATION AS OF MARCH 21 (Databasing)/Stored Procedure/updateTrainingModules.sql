DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`updateTrainingModules` $$
CREATE PROCEDURE `hris`.`updateTrainingModules` (IN cor_ID INT, IN cor_type VARCHAR(150), IN cor_desc VARCHAR(200), IN cor_facilitator VARCHAR(300), IN sys_user INT)
BEGIN
    UPDATE hris.rectrainingmodules SET Type = cor_type, Description = cor_desc, Facilitator = cor_facilitator,
    Syscreated = now(), Syscreator = sys_user, Sysmodified = now(), Sysmodifier = sys_user WHERE CourseID = cor_ID;

    SELECT * FROM hris.rectrainingmodules;
END $$

DELIMITER ;