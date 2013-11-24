DELIMITER $$

DROP PROCEDURE IF EXISTS `hris`.`loadUndertakings` $$
CREATE PROCEDURE `hris`.`loadUndertakings` ()
BEGIN
    SELECT Description FROM hris.recundertakings;
END $$

DELIMITER ;