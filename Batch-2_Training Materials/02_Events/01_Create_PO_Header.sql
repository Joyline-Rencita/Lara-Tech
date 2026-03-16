SELECT
	'CreatePurchaseOrderHeader' || '_' || PO."ID"  AS "ID",
	 PO."Time" AS "Time"
FROM "o_custom_PurchaseOrderHeader" AS PO
	-- LEFT JOIN <>
	-- ON <>
WHERE PO."Time" IS NOT NULL
