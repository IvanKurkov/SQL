use cw;
select sum(bills.naminal), citizen_chip.id_chip from bills, citizen_chip where bills.citizen_id_chip = citizen_chip.id_chip group by id_chip