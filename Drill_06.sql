
SELECT 
	specialist_fname, specialist_lname, specialist_contact
FROM tbl_specialist sp1
	INNER JOIN tbl_care c1 ON c1.care_specialist = sp1.specialist_id
	INNER JOIN tbl_species s1 ON s1.species_care = c1.care_id
	WHERE species_name = 'penguin'
;

 


