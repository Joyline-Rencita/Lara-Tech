******************************   POPULATING THE OBJECT ATTRIBUTES   ****************************

SELECT
	TRY_CAST("BELNR" AS VARCHAR(255)) AS "ID",
	"MANDT" AS "MANDT",
	"GJAHR" AS "GJAHR",
	"BLART" AS "BLART",
	"BLDAT" AS "BLDAT",
	"CPUDT" AS "CPUDT",
	"CPUTM" AS "CPUTM",
	"BUDAT" AS "BUDAT",
	"MONAT" AS "MONAT",
	"AEDAT" AS "AEDAT",
	"USNAM" AS "USNAM",
	"WAERS" AS "WAERS",
	"KURSF" AS "KURSF",
	"GLVOR" AS "GLVOR",
	"AWTYP" AS "AWTYP",
	"AWKEY" AS "AWKEY",
	"HWAER" AS "HWAER",
	"HWAE2" AS "HWAE2",
	"KURS2" AS "KURS2",
	"BASW2" AS "BASW2",
	"UMRD2" AS "UMRD2",
	"CURT2" AS "CURT2",
	"KUTY2" AS "KUTY2",
	"XSNET" AS "XSNET",
	"XSTOV" AS "XSTOV",
	"XMWST" AS "XMWST",
	"DOCCAT" AS "DOCCAT",
	"KURST" AS "KURST",
	"BUKRS" AS "JoylineRSEG"
FROM "BKPF"

******************************   POPULATING THE OBJECT CHANGES   ****************************	
