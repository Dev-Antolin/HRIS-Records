DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`uploadAPEResult` $$
CREATE PROCEDURE `hris`.`uploadAPEResult` (IN empID INT, IN ape_desc VARCHAR(150), IN ape_filename VARCHAR(100), IN ape_date DATE, IN sys_user INT)
BEGIN
    INSERT INTO hris.recemployeeape VALUES (empID,ape_desc,ape_filename,ape_date,now(),sys_user,now(),sys_user);
END $$

DELIMITER ;