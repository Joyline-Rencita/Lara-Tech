
SELECT
	'PurchaseOrderItem_' || "EKPO"."MANDT" || "EKPO"."EBELN" || "EKPO"."EBELP" AS "ID",
	"EKPO"."BUKRS" AS "CompanyCode",
	"T001"."BUTXT" AS "CompanyCodeText",
	"EKKO"."WAERS" AS "Currency",
	"EKPO"."WEPOS" AS "GoodsReceiptIndicator",
	CAST("EKPO"."NETWR" AS DOUBLE) AS "NetAmount",
	CAST("EKPO"."NETPR" AS DOUBLE) AS "NetUnitPrice",
	CAST("EKPO"."MENGE" AS DOUBLE) AS "Quantity",
	"EKPO"."AEDAT" AS "Time",
	'PurchaseOrder_' || "EKKO"."MANDT" || "EKKO"."EBELN"  AS PurchaseOrderHeaders   -- 1:n with POI
FROM "EKPO" AS "EKPO"
	LEFT JOIN "EKKO" AS "EKKO"
		ON "EKPO"."MANDT" = "EKKO"."MANDT"
			AND "EKPO"."EBELN" = "EKKO"."EBELN"
	LEFT JOIN "T001" AS "T001"
		ON "EKPO"."MANDT" = "T001"."MANDT"
			AND "EKPO"."BUKRS" = "T001"."BUKRS"
WHERE "EKPO"."MANDT" IS NOT NULL
  AND "EKPO"."BSTYP" = 'F'
