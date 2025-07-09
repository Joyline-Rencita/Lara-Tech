SELECT
	"o_custom_JoylineRSEG"."ID" AS "ID",
	"o_custom_JoylineLFA1"."ERDAT" AS "Time",
    "o_custom_JoylineRSEG"."JoylineEKPORSEG_ID" AS "JoylineLFA1"
FROM "o_custom_JoylineRSEG"
	LEFT JOIN "o_custom_JoylineLFA1"
	ON "o_custom_JoylineLFA1"."ID" = "o_custom_JoylineRSEG"."LifnrEkko"
-- WHERE <>
