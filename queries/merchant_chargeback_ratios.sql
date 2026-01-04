/*
    GOAL: Create an aggregate summary table for dashboard visualization.
    LOGIC:
    1. Group raw transactions by Merchant, Category, and Month.
    2. Calculate "Volume Metrics" to provide context (Merchant Size).
    3. Calculate "Risk Metrics" to quantify financial loss and dispute counts.
    4. Engineer columns for reason codes (10.4 & 13.1).
    5. Compute the "Chargeback Ratio" KPI for monitoring.
*/

SELECT merchant,
       category,

       -- Date Formatting (Convert timestamps to Year-Month (YYYY-MM) for trend analysis)
       TO_CHAR(trans_date_trans_time::DATE, 'YYYY-MM') AS date,

       -- Volume Metrics (How big is the merchant?)
       COUNT(is_chargeback) as total_transactions,
       ROUND(SUM(amt) :: numeric, 2) as total_sales_usd,

       -- Risk Metrics (How risky is the merchant?)
       ROUND(SUM(CASE WHEN is_chargeback = 1 THEN amt :: numeric ELSE 0 END), 2) as total_lost_usd,
       SUM(is_chargeback) as total_chargebacks,

       -- Breakdown by Reason Code (Why is it happening?)

       -- 10.4: Fraud - Card Absent
       SUM(CASE WHEN visa_reason_code like '%10.4%' THEN 1 ELSE 0 END) as card_absent_10_4,

       -- 13.1: Merchandise Not Received
       SUM(CASE WHEN visa_reason_code like '%13.1%' THEN 1 ELSE 0 END) as items_not_received_13_1,

       -- Main KPI
       -- Formula: (Total Chargebacks / Total Transactions) * 100
       ROUND((SUM(is_chargeback) * 100.0 / COUNT(*)), 3) as chargeback_ratio

FROM chargeback_update
GROUP BY merchant, category, date
ORDER BY chargeback_ratio DESC;