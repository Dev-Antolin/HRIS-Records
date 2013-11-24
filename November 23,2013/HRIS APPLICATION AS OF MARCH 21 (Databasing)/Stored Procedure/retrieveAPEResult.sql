DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`retrieveAPEResult` $$
CREATE PROCEDURE `hris`.`retrieveAPEResult` (IN empID INT, IN ape_type VARCHAR(150))
BEGIN
    SELECT a.EmployeeID, CONCAT(a.FirstName," ",LEFT(a.MiddleName,1),". ",LastName), b.Description, b.Date, b.Filename
    FROM hris.recpersonalinformation a INNER JOIN hris.recemployeeape b ON b.EmployeeID = a.EmployeeID
    WHERE a.EmployeeID = empID AND b.Description = ape_type;
END $$

DELIMITER ;