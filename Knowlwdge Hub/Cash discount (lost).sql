Pseudo-code:
Sum of Lost Cash Discount for valid documents

SUM(
  CASE
    WHEN "o_celonis_VendorAccountCreditItem"."isRelevantAndCleared" = 0.0
      THEN 0.0
    ELSE "o_celonis_VendorAccountCreditItem"."LostCashDiscount"
  END)
