use cw;
create view location_for_trackers as
select tracking.id as tracker_number,
	
	(select ctity from locations_city where locations.id = locations_city.id) as city,
	(select district from locations_district where locations.id = locations_district.id) as district,
	(select house from locations_house where locations.id = locations_house.id) as house,
	(select street from locations_street where locations.id = locations_street.id) as street
	
	from locations right outer join tracking on locations.id = tracking.locations_id order by tracker_number
	
	