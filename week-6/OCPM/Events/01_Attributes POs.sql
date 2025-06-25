
SELECT
	"o_custom_EKKO"."ERNAM" AS "user",
	"o_custom_EKKO"."ID" AS "ID",
	"o_custom_EKKO"."AEDAT" AS "Time"
FROM "o_custom_EKKO"
	LEFT JOIN "c_o_custom_EKKO" AS EKKO
	ON EKKO.OBJECTID = "o_custom_EKKO"."ID"
WHERE "o_custom_EKKO"."BSTYP" = 'F'
