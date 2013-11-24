DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`uploadUndertakings` $$
CREATE PROCEDURE `hris`.`uploadUndertakings` (IN ut_desc VARCHAR(200),IN empID INT, IN file_name VARCHAR(100), IN sys_user INT, IN ut_date DATE)
BEGIN
    declare ut_code Varchar(100);

    SELECT UtCode INTO ut_code FROM hris.recundertakings WHERE Description = ut_desc;
    INSERT INTO hris.recemployeeundertaking VALUES (empID,ut_code,file_name,ut_date,now(),sys_user,now(),sys_user);
END $$

DELIMITER ;