

SELECT
	species_name AS 'Species Name:', nutrition_type AS 'Nutrition Type:'
	FROM tbl_species s1
	INNER JOIN tbl_nutrition n1 ON n1.nutrition_id = s1.species_nutrition
;
