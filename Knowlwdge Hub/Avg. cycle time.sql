Pseudo-code
Average number of days between Creation Date and Posting Date
for cleared documents

AVG(
  CASE
    WHEN "o_celonis_VendorAccountCreditItem"."isRelevantAndCleared" = 0
      THEN NULL
    ELSE "o_celonis_VendorAccountCreditItem"."DaysBetweenCreationDateAndPostingDate"
  END)
