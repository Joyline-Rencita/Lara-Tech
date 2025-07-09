
********************************************     POPULATING THE EVENT ATTRIBUTES      *****************************************


SELECT
    "o_custom_JoylineRSEG"."ID" AS "ID",
    "o_custom_JoylineLFA1"."ERDAT" AS "Time",
    "o_custom_JoylineRSEG"."MANDT" AS "MANDT",
    "o_custom_JoylineRSEG"."EbelpEkpo" AS "EBELP",
    "o_custom_JoylineRSEG"."GJAHR" as "FiscalYear",
    "o_custom_JoylineRSEG"."NetwrEkpo" AS "NetOrderValue",
    "o_custom_JoylineRSEG"."NetprEkpo" AS "NetPrice",
    "o_custom_JoylineLFA1"."ERNAM" AS "InvoiceCreator",
    "o_custom_JoylineRSEG"."JoylineEKPORSEG_ID" AS "JoylineLFA1"
FROM "o_custom_JoylineRSEG"
	LEFT JOIN "o_custom_JoylineLFA1"
	ON "o_custom_JoylineLFA1"."ID" = "o_custom_JoylineRSEG"."LifnrEkko"
-- WHERE <>

********************************************     POPULATING THE EVENT RELATIONSHIPS    *****************************************
