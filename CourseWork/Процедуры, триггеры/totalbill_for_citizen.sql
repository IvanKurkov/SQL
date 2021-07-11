use cw;

DELIMITER //

DROP PROCEDURE IF EXISTS totalbills//
CREATE PROCEDURE totalbills (OUT total INT, INout id_chip int)
BEGIN
  SELECT COUNT(*) INTO total FROM bills WHERE citizen_chip_id_chip = id_chip  ;
END//
set @b = 2//
CALL totalbills(@a, @b)//
SELECT @a, @b//
DELIMITER ;