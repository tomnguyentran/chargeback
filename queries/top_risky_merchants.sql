/*
    GOAL: Quantify financial impact of high risk merchants.
    LOGIC:
    1. Aggregate transaction data by merchant for the 2019.
    2. Filter for merchants exceeding a 3.0% chargeback ratio.
    3. Calculate total lost usd.
*/

WITH top_risky_merchants as (
    SELECT merchant,
           -- Metrics included for context
           COUNT(is_chargeback) as total_transactions,
           ROUND(SUM(amt) :: numeric, 2) as total_sales_usd,

           -- Metrics of interest
           ROUND(SUM(CASE WHEN is_chargeback = 1 THEN amt :: numeric ELSE 0 END), 2) as total_lost_usd,
           SUM(is_chargeback) as total_chargebacks,

           -- Calculated metrics: (chargebacks / total transactions) * 100
           ROUND((SUM(is_chargeback) * 100.0 / COUNT(*)), 3) as chargeback_ratio
    FROM chargeback_update

    -- Filter for 2019
    WHERE trans_date_trans_time BETWEEN '2019-01-01' and '2020-01-01'
    GROUP BY merchant

    -- Filter for merchants exceeding a 3.0% chargeback ratio
    HAVING ROUND((SUM(is_chargeback) * 100.0 / COUNT(*)), 3) > 3
    ORDER BY chargeback_ratio DESC
)

-- Calculates the total financial impact of 38 identified merchants
SELECT COUNT(*) as total_merchants, SUM(total_lost_usd) as total_lost_usd
FROM top_risky_merchants