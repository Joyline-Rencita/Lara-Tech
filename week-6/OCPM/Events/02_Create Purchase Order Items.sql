  ********************************  POPULATING THE EVENT ATTRIBUTES  *************************************

SELECT
	"o_custom_JoylineEKPO"."ID" AS "ID",
	"o_custom_JoylineEKPO"."AEDAT" AS "Time",
    "o_custom_JoylineEKPO"."BUKRS" AS "companyCode",
    "o_custom_JoylineEKPO"."MATNR" AS "materialNum",
    "o_custom_JoylineEKPO"."MATKL" AS "materialGroupNum",
    "o_custom_JoylineEKPO"."NetwrConverted" AS "netValue",
    "o_custom_JoylineEKPO"."NetprConverted" AS "netPrice",
    NULL AS JoylineEKKO

FROM "o_custom_JoylineEKPO"
	LEFT JOIN "c_o_custom_JoylineEKPO" AS EKPO
	ON EKPO.OBJECTID = "o_custom_JoylineEKPO"."ID"


********************************  POPULATING THE EVENT RELATIONSHIPS  *************************************


SELECT
	"o_custom_JoylineEKKO"."ID" AS "ID",
	"o_custom_JoylineEKPO"."ID" AS "JoylineEKPO"
FROM "o_custom_JoylineEKKO"
	LEFT JOIN "o_custom_JoylineEKPO"
	ON "o_custom_JoylineEKKO"."ID" = "o_custom_JoylineEKPO"."EBELP"
-- WHERE <>
