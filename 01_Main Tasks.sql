select * from EKKO;
select * from EKPO;
select * from LFA1;
select * from CDHDR;
select * from CDPOS;
select * from EBAN;
select * from TCUF;
select * from TCURF;
select * from TCURR;
select * from TCURX;

select count(*) from "EKKO";  -- 43 
select count(*) from "EKPO";  -- 75

-- 1. FOR PURCHASE ORDER :
select A.EBELN, WAERS, NETWR FROM EKKO AS A    -- Select the Purchase Order number, currency, and net price
JOIN EKPO AS B ON                              -- From the Purchase Order Header table (EKKO), aliased as A
A.MANDT = B.MANDT AND A.EBELN = B.EBELN;       -- Join it with the Purchase Order Item table (EKPO), aliased as B

-- FOR INVOICING :

SELECT * FROM BKPF;
SELECT * FROM BSEG;
SELECT * FROM RSEG;

-- 2. Homework : A table that will give me fields from Invoice header and amount WRBTR_CONVERTED

-- WRBTR_CONVERTED (in BSEG table) & invoice header()
SELECT SAMNR, REBZZ, SAKNR, AUFNR, LIFNR, SHKZG, CPUDT, WRBTR_CONVERTED 
FROM BKPF AS BK JOIN BSEG BS ON BK.MANDT = BS.MANDT AND BK.BELNR = BS.BELNR;

-- IMPROVED QUERY :
SELECT 
  SAKNR AS Global_Acc_Num,   LIFNR AS Vendor_Acc_Num,  SAMNR AS Invoice_List_Num,  BLDAT AS Date_of_creation,
  CPUDT AS Document_Entered_Date,   WRBTR_CONVERTED AS Converted_Amount 
FROM BKPF AS BK 
JOIN BSEG BS 
ON BK.MANDT = BS.MANDT  AND BK.BELNR = BS.BELNR
AND BK.BUKRS = BS.BUKRS AND BK.GJAHR = BS.GJAHR;

--- 3. challenge give me the result of total PO value and the payment terms by supplier number

SELECT A.EBELN,NETWR,A.LIFNR, A.ZTERM FROM EKKO AS A 
JOIN EKPO AS B ON                              
A.MANDT = B.MANDT AND A.EBELN = B.EBELN;

-- Improved query:
SELECT 
  EKKO.LIFNR AS Suppiler_Number,        --- 1
  sum(EKPO.NETWR) AS Total_PO_Value,    --- 2
  EKKO.ZTERM AS Payment_Terms           --- 3
FROM EKKO 
JOIN EKPO 
ON EKKO.EBELN = EKPO.EBELN AND EKKO.MANDT = EKPO.MANDT
GROUP BY 1,3;

-- 4. activity table
SELECT * FROM TMP_P2P_EKKO_EKPO_JOYLINE; -- WORKING



