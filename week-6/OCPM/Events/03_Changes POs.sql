********************************  POPULATING THE EVENT ATTRIBUTES  *************************************

SELECT
    "c_o_custom_JOYLINEEKPO"."ID" AS "ID",
    "c_o_custom_JOYLINEEKPO"."Time" AS "Time",
    "c_o_custom_JOYLINEEKPO"."OBJECTID" AS "ChangesPO",
    "c_o_custom_JOYLINEEKPO"."Attribute" AS "Status",
    "c_o_custom_JOYLINEEKPO"."OldValue",
    "c_o_custom_JOYLINEEKPO"."NewValue",
    "c_o_custom_JoylineEKPO"."Attribute" AS "changetype",
    "c_o_custom_JoylineEKPO"."ID" AS "JoylineEKKO"
FROM "c_o_custom_JOYLINEEKPO"
	-- LEFT JOIN "c_o_custom_JoylineEKKO" AS EKKO
	-- ON EKKO.OBJECTID = "o_custom_JoylineEKKO"."ID"
    -- WHERE 
/*
CASE 
		WHEN CHANGES.FNAME = 'LOEKZ' AND CHANGES.VALUE_NEW ='S' THEN 'Block Purchase Order Item'
		WHEN CHANGES.FNAME = 'LOEKZ' AND CHANGES.VALUE_OLD ='S' AND CHANGES.VALUE_NEW IS NULL THEN 'Reactivate Purchase Order Item'
		WHEN CHANGES.FNAME = 'LOEKZ' AND CHANGES.VALUE_NEW ='L' THEN 'Delete Purchase Order Item'
		WHEN CHANGES.FNAME = 'LOEKZ' AND CHANGES.VALUE_OLD ='L' AND CHANGES.VALUE_NEW IS NULL THEN 'Reactivate Purchase Order Item'
		WHEN CHANGES.FNAME = 'LOEKZ' THEN 'Change Deletion Flag for Purchase Order Item'
		WHEN CHANGES.FNAME = 'NETPR' THEN 'Change Price'
		WHEN CHANGES.FNAME = 'MENGE' THEN 'Change Quantity'
		WHEN CHANGES.FNAME = 'LGORT' THEN 'Change Storage Location'
		WHEN CHANGES.FNAME = 'LABNR' AND CHANGES.VALUE_OLD IS NULL THEN 'Receive Order Confirmation'
		WHEN CHANGES.FNAME = 'LABNR' THEN 'Update Order Confirmation'
		WHEN CHANGES.FNAME = 'ELIKZ' THEN 'Change Delivery Indicator'
		WHEN CHANGES.FNAME = 'EREKZ' THEN 'Change Final Invoice Indicator'
		WHEN CHANGES.FNAME = 'EGLKZ' THEN 'Change Outward Delivery Indicator'
		WHEN CHANGES.FNAME = 'ABSKZ' THEN 'Change Rejection Indicator'
        	WHEN CHANGES.FNAME = 'KONNR' THEN 'Change Contract'
		WHEN CHANGES.FNAME = 'KTPNR' THEN 'Change Contract'
        	WHEN CHANGES.FNAME = 'TXZ01' THEN 'Change Short Text Description'
       		WHEN CHANGES.FNAME = 'MATNR' THEN 'Change Material Number'
        	WHEN CHANGES.FNAME = 'MATKL' THEN 'Change Material Group'
	END	
*/

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
