select * from EKKO;
select * from EKPO;

select count(*) from "EKKO";  -- 43 

Output:
count
43
  
select count(*) from "EKPO";  -- 75

Output
count
75

-- 1. FOR PURCHASE ORDER :
select A.EBELN, WAERS, NETWR FROM EKKO AS A    -- Select the Purchase Order number, currency, and net price
JOIN EKPO AS B ON                              -- From the Purchase Order Header table (EKKO), aliased as A
A.MANDT = B.MANDT AND A.EBELN = B.EBELN;       -- Join it with the Purchase Order Item table (EKPO), aliased as B

Output :
EBELN	      WAERS  	NETWR
V411327955	USD	    226876
V411586076	CAD    	246.4
V411671123	CAD	    219.9
V411713810	CAD	    239
V411714298	CAD	    3252.4
V411930981	CAD	    25000
V411577831	CAD	    71000

-- FOR INVOICING :

SELECT * FROM BKPF;
SELECT * FROM BSEG;
SELECT * FROM RSEG;

-- 2. Homework : A table that will give me fields from Invoice header and amount WRBTR_CONVERTED

-- WRBTR_CONVERTED (in BSEG table) & invoice header()
SELECT SAMNR, REBZZ, SAKNR, AUFNR, LIFNR, SHKZG, CPUDT, WRBTR_CONVERTED 
FROM BKPF AS BK JOIN BSEG BS ON BK.MANDT = BS.MANDT AND BK.BELNR = BS.BELNR;

--- 3. challenge give me the result of total PO value and the payment terms by supplier number

SELECT A.EBELN,NETWR,A.LIFNR, A.ZTERM FROM EKKO AS A 
JOIN EKPO AS B ON                              
A.MANDT = B.MANDT AND A.EBELN = B.EBELN;

-- Improved query:
SELECT 
  EKKO.LIFNR AS Suppiler_Number,
  sum(EKPO.NETWR) AS Total_PO_Value,
  EKKO.ZTERM AS Payment_Terms
FROM EKKO 
JOIN EKPO 
ON EKKO.EBELN = EKPO.EBELN AND EKKO.MANDT = EKPO.MANDT
GROUP BY 1,3;

-- 4. activity table
SELECT * FROM TMP_P2P_EKKO_EKPO_JOYLINE; -- WORKING


