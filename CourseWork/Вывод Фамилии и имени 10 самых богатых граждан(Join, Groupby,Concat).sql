use cw;
/*drop view citizen_finance;
create view citizen_finance as 
	select 
    (select fullname from (select id_chip, concat(firstname,' ',lastname) as fullname from passport_citizens, citizen_chip where citizen_chip.citizen_profile_id = passport_citizens.id) as f ,
	(select naminal.naminal FROM naminal WHERE bills.naminal_id=naminal.id) as bill from bills, citizen_chip where 
	;
 */

-- select fullname, sum(bill) from citizen_finance  group by fullname 
/* 
select fullname, nam from
 (select citizen_chip_id_chip as id_chip, naminal.naminal as nam FROM naminal, bills WHERE bills.naminal_id=naminal.id) as ba
 left outer join
 (select id_chip, concat(firstname,' ',lastname) as fullname from passport_citizens, citizen_chip where citizen_chip.citizen_profile_id = passport_citizens.id) as sa 
 on ba.id_chip=sa.id_chip
 */
 select id_chip, fullname, sum(nam) as wallet from
 (select citizen_chip_id_chip, naminal.naminal as nam FROM naminal, bills WHERE bills.naminal_id=naminal.id) as ba
 left outer join
 (select id_chip, concat(firstname,' ',lastname) as fullname from passport_citizens, citizen_chip where citizen_chip.citizen_profile_id = passport_citizens.id) as sa 
 on ba.citizen_chip_id_chip=sa.id_chip group by fullname order by wallet desc limit 10