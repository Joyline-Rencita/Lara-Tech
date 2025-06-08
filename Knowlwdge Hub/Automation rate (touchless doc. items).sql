Pseudo-code
Sum of Automated Events Considered in No-Touch Rate Calculations
 /
Sum of relevant events for touchless calculations, excluding cleared documents

KPI("AP_Metric_VendorAccountCreditItemActivities_SUM__AutomatedEventsConsideredInNoTouchRateCalculations")
/ SUM(
  CASE
    WHEN "o_celonis_VendorAccountCreditItem"."isRelevantAndCleared" = 0.0
      THEN NULL
    WHEN "el__VendorAccountCreditItemActivities"."ACTIVITY" NOT IN (${AP_Variable_Input__EventsIrrelevantForTouchlessCalculations})
      THEN 1
    ELSE 0
  END
)
