DROP TRIGGER IF EXISTS nullTrigger;
delimiter //
CREATE TRIGGER prodnull BEFORE INSERT ON products
FOR EACH ROW
BEGIN
	IF NEW.name IS NULL AND NEW.description IS NULL
    THEN SIGNAL sqlstate '45000' set message_text = "name or description  not NULL"; 
  end if;
END //
delimiter ;