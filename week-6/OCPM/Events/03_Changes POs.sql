********************************  POPULATING THE EVENT ATTRIBUTES  *************************************

SELECT
	"o_custom_JoylineEKKO"."ID" AS "ID",
	"o_custom_JoylineEKKO"."AEDAT" AS "Time",
    "EKKO"."OBJECTID" AS "ChangesPO",
    "EKKO"."Attribute" AS "Status",
    "EKKO"."OldValue",
    "EKKO"."NewValue",
	NULL AS "JoylineEKKO"
FROM "o_custom_JoylineEKKO"
	LEFT JOIN "c_o_custom_JoylineEKKO" AS EKKO
	ON EKKO.OBJECTID = "o_custom_JoylineEKKO"."ID"
-- WHERE 


********************************  POPULATING THE EVENT RELATIONSHIPS  *************************************
