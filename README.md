# Project Background
This project analyzes a dataset from a Fintech company that provides payment processing solutions for merchants.
The company's business model generates revenue though transaction fees, but profitability is threatened by fraudulent activities and chargebacks.

Note: This project utilizes a simulated dataset for educational purposes. The data was downloaded from this [website](https://www.kaggle.com/datasets/kartik2112/fraud-detection?select=fraudTrain.csv)

in 2019, the company processed about **$65 million** in total transaction volume. The main challenge identified was the significant amount of chargebacks
where customers dispute their transactions and demand refunds due to fraud or service issues. These disputes resulted in **$2.9 million** in losses and put the company
at risk with card networks (Visa/Mastercard), which typically penalize processors that exceed the 1% chargeback ratio.

The goal of this analysis was to evaluate the financial impact of fraud, identify high risk merchants, and recommend strategies to minimize losses using SQL and Tableau.

Insights and recommendations are provided on the following key areas:

- **Executive KPI Assessment:** An evaluation of the company's overall health, comparing total sales **($65M)**
against total fraud loss **($2.9M)** to determine the chargeback ratio **(0.79%)**.

- **High Risk Merchant Identification:** A comprehensive visualization of all active merchants, using a diverging color palette (Red > 0.8% > Green) to highlight merchants exceeding the safety threshold. 

- **Fraud Trends:** A timeline analysis tracking the company's risk performance throughout 2019, revealing the consistent downward trend from **1.15% to 0.65%**.

- **Root Cause Analysis:** A breakdown of risk factors identifying **"Online Shopping"** and **"Card Absent" (10.4)** as the primary drivers of financial loss.

The Python code used to simulate chargeback scenarios and assign Visa reason codes (10.4 and 13.1) can be found [here](python_scripts/chargeback.ipynb).

The SQL queries used to aggregate transaction metrics for the dashboard can be found [here](queries/merchant_chargeback_ratios.sql).

A Tableau dashboard used to report and explore fraud trends can be found [here](https://public.tableau.com/app/profile/tom.tran3530/viz/chargeback_dashboard/Dashboard).



# Data Structure & Initial Checks

The companies main database structure as seen below consists of four tables: table1, table2, table3, table4, with a total row count of X records. A description of each table is as follows:
- **Table 2:**
- **Table 3:**
- **Table 4:**
- **Table 5:**

[Entity Relationship Diagram here]



# Executive Summary

### Overview of Findings

Explain the overarching findings, trends, and themes in 2-3 sentences here. This section should address the question: "If a stakeholder were to take away 3 main insights from your project, what are the most important things they should know?" You can put yourself in the shoes of a specific stakeholder - for example, a marketing manager or finance director - to think creatively about this section.

[Visualization, including a graph of overall trends or snapshot of a dashboard]



# Insights Deep Dive
### Category 1:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 1]


### Category 2:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 2]


### Category 3:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 3]


### Category 4:

* **Main insight 1.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 2.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 3.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.
  
* **Main insight 4.** More detail about the supporting analysis about this insight, including time frames, quantitative values, and observations about trends.

[Visualization specific to category 4]



# Recommendations:

Based on the insights and findings above, we would recommend the [stakeholder team] to consider the following: 

* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  
* Specific observation that is related to a recommended action. **Recommendation or general guidance based on this observation.**
  


# Assumptions and Caveats:

Throughout the analysis, multiple assumptions were made to manage challenges with the data. These assumptions and caveats are noted below:

* Assumption 1 (ex: missing country records were for customers based in the US, and were re-coded to be US citizens)
  
* Assumption 1 (ex: data for December 2021 was missing - this was imputed using a combination of historical trends and December 2020 data)
  
* Assumption 1 (ex: because 3% of the refund date column contained non-sensical dates, these were excluded from the analysis)

