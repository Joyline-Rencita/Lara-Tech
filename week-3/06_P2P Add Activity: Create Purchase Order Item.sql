
INSERT INTO _CEL_P2P_EKPO_ACTIVITIES(
    _CASE_KEY
    ,MANDT
	  ,EBELN
	  ,EBELP
    ,ACTIVITY_DE
    ,ACTIVITY_EN
    ,EVENTTIME
    ,_SORTING
    ,USER_NAME
--    ,USER_TYPE
	  ,TRANSACTION_CODE
--    ,_CELONIS_CHANGE_DATE
    ,_ACTIVITY_KEY) 

SELECT
    E._CASE_KEY AS _CASE_KEY
    ,E.MANDT AS MANDT
	  ,E.EBELN AS EBELN
	  ,E.EBELP AS EBELP
    ,'Lege Bestellposition an' AS ACTIVITY_DE
    ,'Create Purchase Order Item' AS ACTIVITY_EN
    ,CASE
        WHEN CHANGES_ITEM.EVENTTIME IS NOT NULL THEN CHANGES_ITEM.EVENTTIME
        WHEN CHANGES_HEADER.EVENTTIME IS NOT NULL THEN CHANGES_HEADER.EVENTTIME
        ELSE CAST(E.EKPO_AEDAT AS DATE) + CAST('00:00:01' AS TIME)
    END AS EVENTTIME
    ,500 AS _SORTING
    ,COALESCE(CHANGES_ITEM.USERNAME,CHANGES_HEADER.USERNAME, E.ERNAM) AS USER_NAME
    -- ,CASE
    --     WHEN CHANGES_ITEM.USERNAME IS NOT NULL THEN USR02_ITEM.USTYP
    --     WHEN CHANGES_HEADER.USERNAME IS NOT NULL THEN USR02_HEAD.USTYP
    --     ELSE USR02_EKKO.USTYP
    -- END AS USER_TYPE
    ,CASE
        WHEN CHANGES_ITEM.TCODE IS NOT NULL THEN CHANGES_ITEM.TCODE
        ELSE CHANGES_HEADER.TCODE
    END  AS TRANSACTION_CODE
--    ,NOW() AS _CELONIS_CHANGE_DATE
    ,E.MANDT || E.EBELN || E.EBELP  AS _ACTIVITY_KEY
FROM
    TMP_P2P_EKKO_EKPO AS E
    LEFT JOIN P2P_CDHDR_CDPOS AS CHANGES_ITEM ON 1=1
        AND E.MANDT = CHANGES_ITEM.MANDANT
        AND E._CASE_KEY= CHANGES_ITEM.TABKEY
        AND CHANGES_ITEM.TABNAME IN ('EKPO')
        AND CHANGES_ITEM.CHNGIND = 'I'
        AND CHANGES_ITEM.FNAME = 'KEY'
    LEFT JOIN P2P_CDHDR_CDPOS AS CHANGES_HEADER ON 1=1
        AND E.MANDT = CHANGES_HEADER.MANDANT
        AND E.TABKEY_EKKO = CHANGES_HEADER.TABKEY
        AND CHANGES_HEADER.TABNAME IN ('EKKO')
        AND CHANGES_HEADER.CHNGIND = 'I'
        AND CHANGES_HEADER.FNAME = 'KEY'
--	LEFT JOIN USR02  AS USR02_HEAD ON 1=1
		-- AND CHANGES_HEADER.MANDANT = USR02_HEAD.MANDT
		-- AND CHANGES_HEADER.USERNAME = USR02_HEAD.BNAME
    -- LEFT JOIN USR02  AS USR02_ITEM ON 1=1
		-- AND CHANGES_ITEM.MANDANT = USR02_ITEM.MANDT
		-- AND CHANGES_ITEM.USERNAME = USR02_ITEM.BNAME
    -- LEFT JOIN USR02 AS USR02_EKKO On 1=1
    --     AND USR02_EKKO.MANDT = E.MANDT
    --     AND USR02_EKKO.BNAME = E.ERNAM
;

-- SELECT DISTINCT ACTIVITY_EN FROM _CEL_P2P_EKPO_ACTIVITIES
