DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`retrieveEmpHistory` $$
CREATE PROCEDURE `hris`.`retrieveEmpHistory` (IN emp_ID INT, IN his_type VARCHAR(50))
BEGIN
    SELECT CONCAT(a.LastName,", ",a.FirstName," ",LEFT(a.MiddleName,1),"."), b.Date, b. Description, b.Type, b.Filename, b.Company, b.Designation
    FROM hris.recpersonalinformation a INNER JOIN
    hris.recemployeehistory b ON b.EmployeeID = a.EmployeeID WHERE a.EmployeeID = emp_ID AND b.Type = his_type;
END $$

DELIMITER ;