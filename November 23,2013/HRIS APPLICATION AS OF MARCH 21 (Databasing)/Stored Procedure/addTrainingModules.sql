DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`addTrainingModules` $$
CREATE PROCEDURE `hris`.`addTrainingModules` (IN cor_type VARCHAR(150), IN cor_desc VARCHAR(200), IN cor_facilitator VARCHAR(300), IN sys_user INT)
BEGIN
    INSERT INTO hris.rectrainingmodules (Type, Description, Facilitator, Syscreated, Syscreator, Sysmodified, Sysmodifier)
    VALUES (cor_type, cor_desc, cor_facilitator, now(), sys_user, now(), sys_user);
END $$

DELIMITER ;