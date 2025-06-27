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

SELECT
	"o_custom_JoylineEKKO"."ID" AS "ID",
	"o_custom_JoylineEKPO"."ID" AS "JoylineEKPO"
    -- "c_o_custom_JoylineEKPO"."Time" AS "TIME"
FROM "o_custom_JoylineEKKO"
	LEFT JOIN "o_custom_JoylineEKPO"
	ON "o_custom_JoylineEKKO"."ID" = "o_custom_JoylineEKPO"."EBELP"
LEFT JOIN "c_o_custom_JoylineEKPO"                                         ---   JOINED CDPOS AND EKPO
    ON  "c_o_custom_JoylineEKPO"."ObjectID" = "o_custom_JoylineEKPO"."ID"
