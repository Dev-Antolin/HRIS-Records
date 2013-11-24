DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`createClearance` $$
CREATE PROCEDURE `hris`.`createClearance` (IN empID INT, IN clear_num INT, IN clear_date DATE, IN stat VARCHAR(50), IN sys_user INT)
BEGIN
    INSERT INTO hris.recemployeeclearance VALUES (clear_num,empID,clear_date,stat,now(),sys_user,now(),sys_user);
END $$

DELIMITER ;