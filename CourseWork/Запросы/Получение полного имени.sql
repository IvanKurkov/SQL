use cw;
select citizen_profile_id, concat(firstname,' ',lastname) as fullname from passport_citizens, citizen_chip where citizen_chip.citizen_profile_id = passport_citizens.id