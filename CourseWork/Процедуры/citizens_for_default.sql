use cw;

DELIMITER //
drop trigger if exists check_citizens//
CREATE TRIGGER check_citizens BEFORE INSERT ON birth_certificate
FOR EACH ROW
BEGIN
	if new.location_city = 'Moscow' then
		set NEW.citizens = COALESCE(NEW.citizens, 'Russian Federation');
	end if;
	if new.location_city = 'Kiev' then
		set NEW.citizens = COALESCE(NEW.citizens, 'Ukraine');
	end if;
	if new.location_city = 'New York' then
		set NEW.citizens = COALESCE(NEW.citizens, 'USA');
	end if;
END//


DELIMITER ;

INSERT INTO `birth_certificate` (`number`, `firstname`, `lastname`, `patronymic`, `gender`, `location_city`) VALUES ('18092', 'Efrain', 'Rath', 'Swaniawski', 'M', 'New York');