DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`searchUndertakings` $$
CREATE PROCEDURE `hris`.`searchUndertakings` (IN empID INT)
BEGIN
    SELECT a.Date, b.Description, a.UtCode FROM hris.recemployeeundertaking a INNER JOIN hris.recundertakings b
    ON b.UtCode = a.UtCode WHERE a.EmployeeID = empID;
END $$

DELIMITER ;