USE db_zootest

SELECT 
	s1.species_name/*, n1.nutrition_id*/
FROM tbl_species s1
	INNER JOIN tbl_nutrition n1 ON n1.nutrition_id = s1.species_nutrition
	WHERE nutrition_id >= 2202 and nutrition_id <= 2206

