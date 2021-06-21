select id,
	(select file_name from photo_citizens where photo_citizens_id = id ) as photo,
 
	from citizen_profile