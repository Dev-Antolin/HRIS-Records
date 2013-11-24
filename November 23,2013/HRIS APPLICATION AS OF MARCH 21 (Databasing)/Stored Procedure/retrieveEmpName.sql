DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`retrieveEmpName` $$
CREATE  PROCEDURE `hris`.`retrieveEmpName`(IN empID INT)
BEGIN
    Select EmployeeID, CONCAT(FirstName," ",LEFT(MiddleName,1),". ",LastName) FROM hris.recpersonalinformation WHERE EmployeeID = empID;
END $$

DELIMITER ;