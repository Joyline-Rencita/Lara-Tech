Pseudo-code :
Count of Distinct Vendor Account Debit Item IDs for Documents that are not Open and Cleared

COUNT(DISTINCT
  CASE
    WHEN "o_celonis_VendorAccountDebitItem"."isRelevant" = 0.0
      THEN NULL
    ELSE "o_celonis_VendorAccountDebitItem"."ID"
 END)

