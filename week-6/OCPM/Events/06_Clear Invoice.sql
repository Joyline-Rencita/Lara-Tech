  ********************************    POPULATING THE EVENT ATTRIBUTES    *************************************
   
SELECT
	"o_custom_JoylineRSEG"."ID" AS "ID",
	"o_custom_JoylineBKPF"."AEDAT"AS "Time",
	-- "o_custom_JoylineBKPF"."ID" AS "JoylineBKPF"
    NULL AS "JoylineBKPF"
FROM "o_custom_JoylineRSEG"
	LEFT JOIN "o_custom_JoylineBKPF"
	ON "o_custom_JoylineBKPF"."GJAHR" = "o_custom_JoylineRSEG"."GJAHR"
-- WHERE <>

  ********************************    POPULATING THE EVENT RELATIONSHIPS   *************************************
