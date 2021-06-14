 select fullname, sum(nam) as wallet from
 (select citizen_chip_id_chip as id_chip, naminal.naminal as nam FROM naminal, bills WHERE bills.naminal_id=naminal.id) as ba
 left outer join
 (select id_chip, concat(firstname,' ',lastname) as fullname from passport_citizens, citizen_chip where citizen_chip.citizen_profile_id = passport_citizens.id) as sa 
 on ba.id_chip=sa.id_chip group by fullname order by wallet desc limit 10