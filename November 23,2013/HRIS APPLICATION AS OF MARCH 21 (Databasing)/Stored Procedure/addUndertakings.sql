DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`addUndertakings` $$
CREATE PROCEDURE `hris`.`addUndertakings` (IN ut_code VARCHAR(10), IN ut_desc VARCHAR(100), IN sys_user INT)
BEGIN
    INSERT INTO hris.recundertakings VALUES (ut_code, ut_desc, now(),sys_user,now(),sys_user);
END $$

DELIMITER ;