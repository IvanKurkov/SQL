use cw;
create view citizen_age as 
SELECT
  concat(firstname," ", lastname) as citizen,
  (
    (YEAR(CURRENT_DATE) - YEAR(date_of_birth)) -                             
    (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(date_of_birth, '%m%d')) 
  ) AS age 
FROM passport_citizens 