-- +++++++++++++++++++++++++++++++++
-- Author: 	James Quinlan
-- Date: 	Apr 09, 2021
-- Purpose:	SQL PROCEDURE
-- Copyright:	(c) 2021. J. Quinlan
-- License: 	MIT 

-- MySQL Version: 8.0.20
-- +++++++++++++++++++++++++++++++++

DELIMITER //
DROP PROCEDURE IF EXISTS calculate //
CREATE PROCEDURE calculate(IN x INT, IN y INT, OUT sum INT, OUT product INT)
-- Calculate Sum and Product of two numbers
BEGIN
  SET sum = x + y;
  SET product = x * y;
END//

DELIMITER ;
