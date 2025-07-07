  ********************************  POPULATING THE EVENT ATTRIBUTES  *************************************
	  
SELECT
    "o_custom_JoylineEKKO"."ERNAM" AS "user",
    "o_custom_JoylineEKKO"."ID" AS "ID",
    "o_custom_JoylineEKKO"."AEDAT" AS "Time",
    "o_custom_JoylineEKKO"."BUKRS" as "CompanyCode",
    "o_custom_JoylineEKKO"."BSART" AS "PurchasingDocType",
    "o_custom_JoylineEKKO"."BSTYP" AS "PurchasingDocCategory",
    "o_custom_JoylineEKKO"."EKORGTEXT" AS "PurchasingOrg",
    "o_custom_JoylineEKKO"."WAERS" AS "CurrencyKey",
    "o_custom_JoylineEKKO"."WKURS" AS "ExchangeRate",
    "o_custom_JoylineEKKO"."EKGRP" AS "PurchasingGroup",
    "o_custom_JoylineEKKO"."ORDEREDDATE" AS "OrderDate",
    "o_custom_JoylineEKKO"."SUBMITDATE" AS "SubmittedDate",
    "EKKO"."ID" AS JoylineEKKO
FROM "o_custom_JoylineEKKO"
	LEFT JOIN "c_o_custom_JoylineEKKO" AS EKKO
	ON EKKO.OBJECTID = "o_custom_JoylineEKKO"."ID"
WHERE "o_custom_JoylineEKKO"."BSTYP" = 'F'


  ********************************  POPULATING THE EVENT RELATIONSHIPS  *************************************

SELECT
	"o_custom_JoylineEKKO"."ID" AS "ID",
	"o_custom_JoylineEKPO"."ID" AS "JoylineEKPO"
FROM "o_custom_JoylineEKKO"
	LEFT JOIN "o_custom_JoylineEKPO"
	ON "o_custom_JoylineEKKO"."ID" = "o_custom_JoylineEKPO"."EBELP"
WHERE "o_custom_JoylineEKKO"."BSTYP" = 'F'
