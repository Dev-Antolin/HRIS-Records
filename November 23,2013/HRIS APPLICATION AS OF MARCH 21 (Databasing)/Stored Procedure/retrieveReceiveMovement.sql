DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`retrieveReceiveMovement` $$
CREATE PROCEDURE `hris`.`retrieveReceiveMovement` (IN move_num INT, IN empID INT)
BEGIN
    SELECT a.MovementNo, a.EmployeeID, a.Reason, a.DateRequested, a.EffectiveDate,
    CONCAT(b.FirstName," ", LEFT(b.MiddleName,1),". ",b.LastName), b.DateHired, c.JobCode, c.CostCenter,
    c.DivFrom, c.DivTo, c.DepFrom, c.DepTo, c.DesignationFrom, c.DesignationTo FROM
    hris.recemployeemovement a INNER JOIN hris.recpersonalinformation b ON b.EmployeeID = a.EmployeeID
    JOIN hris.recemployeemovementdetails c ON c.MovementNo = a.MovementNo WHERE a.MovementNo = move_num AND a.EmployeeID = empID;
END $$

DELIMITER ;