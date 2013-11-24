DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`retrieveAttachment` $$
CREATE PROCEDURE `hris`.`retrieveAttachment` (IN emp_id INT, IN attach_type VARCHAR(150))
BEGIN
    SELECT EmployeeID, Filename FROM hris.recattachments WHERE EmployeeID = emp_id AND AttachmentType = attach_type;
END $$

DELIMITER ;