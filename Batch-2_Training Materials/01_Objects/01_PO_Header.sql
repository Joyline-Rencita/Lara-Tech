
SELECT
	'PurchaseOrder_' || "EKKO"."MANDT" || "EKKO"."EBELN"  AS "ID",
	"EKKO"."AEDAT"										  AS "Time",
	"EKKO"."BUKRS"										  AS "CompanyCode",
	"T001"."BUTXT"										  AS "CompanyCodeText", 
	"EKKO"."EKORG"										  AS "PurchasingOrg",
	"T024E"."EKOTX" 									  AS "PurchasingOrgText", 
	"EKKO"."LIFNR"										  AS "Vendor",
	"EKKO"."BSTYP" 										  AS "PurchasingDocCategory"
FROM "EKKO" AS "EKKO"
	LEFT JOIN "T001" AS "T001"
			ON "EKKO"."MANDT" = "T001"."MANDT"
				AND "EKKO"."BUKRS" = "T001"."BUKRS"
	LEFT JOIN "T024E" AS "T024E"
			ON "EKKO"."MANDT" = "T024E"."MANDT"
				AND "EKKO"."EKORG" = "T024E"."EKORG"

WHERE "EKKO"."MANDT" IS NOT NULL
  AND "EKKO"."BSTYP" = 'F'
