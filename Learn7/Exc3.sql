select id, 
	(select name from cities where `from` = label.cities) as `from`,
	(select name from cities where `to` = label.cities) as `to`
	from flights;