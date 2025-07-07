-- Query 1 : challenge give me the result of total PO value, avg PO Value and the payment terms by supplier number

SELECT 
  EKKO.LIFNR AS Suppiler_Number,        --- 1
  sum(EKPO.NETWR) AS Total_PO_Value,    --- 2
  Avg(EKPO.NETWR) AS Average_PO_Value,  --- 3
  EKKO.ZTERM AS Payment_Terms           --- 4
FROM EKKO 
JOIN EKPO 
ON EKKO.EBELN = EKPO.EBELN AND EKKO.MANDT = EKPO.MANDT
GROUP BY 1,4;

Output:
  
Suppiler_Number	    Total_PO_Value	    Average_PO_Value	    Payment_Terms
7000020757	          7800	               7800	                 NT75
7003198849	        104325.36	        104325.36	          NT40
