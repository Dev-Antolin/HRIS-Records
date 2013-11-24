DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`appTrainingRequest` $$
CREATE PROCEDURE `hris`.`appTrainingRequest` (IN rec_No INT, IN stat VARCHAR(50), IN sys_user INT)
BEGIN
    UPDATE hris.rectrainingrequest SET ReqStatus = stat, Syscreated = now(), Syscreator = sys_user, Sysmodified = now(), Sysmodifier = sys_user
    WHERE RequestNo = rec_No;

    SELECT * FROM hris.rectrainingrequest;
END $$

DELIMITER ;