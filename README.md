
# Elist Post-Pandemic E-commerce Analysis


# Project Background
Elist is a global e-commerce company that sells consumer electronics, including laptops, monitors, headphones, and accessories, through its online storefront. The business operates across four major regions (North America, EMEA, APAC, and Latin America) and acquires customers primarily through direct, email, affiliate, and social media channels. The company offers a loyalty program designed to increase customer retention and repeat purchase rates.

This project analyzes Elist's transactional data from 2019 to 2022 to answer four key business questions: how overall sales trended over time, what the monthly and yearly growth rates looked like, whether the loyalty program is delivering value, and how refund rates and average order values (AOV) performed across products. The goal is to surface actionable insights that can inform decisions across marketing, product, and customer success teams.

## Key terms and metrics used throughout this analysis:

- Revenue - Total sales generated from customer purchases.
- Order Count - Number of unique customer orders.
- Average Order Value (AOV) - Average revenue generated per order.
-  Mom/YoY Growth - Month-over-month and year-over-year % change in revenue.
-  Refund Rate - Percentage of orders that were refunded.
-  Loyalty Status - Indicates whether a customer is part of the loyalty program.
-  Marketing Channel - Channel that influenced or generated the order.

## Execitive Summary

<p align="center">
  <img width="2350" height="1251" alt="Company_Overview_Dashboard" src="https://github.com/user-attachments/assets/a3220ff9-84ae-45ee-983c-9229c4f7ad2d" />
</p>

- Elist generaged **$28.1M** in total revenue across **$108,127** between 2019 and 2022, with an average order value of **$260** and an overall refund rate of **5%**.
- Revenue grew steadily from 2019, surged during the pandemic, and peaked at **$1.3M in December 2020**, more than double the four-year montly average of $586K. every month in 2022 fell below that average, with the lowest point hitting **$178K in October 2022**, an 86% drop from peak.
- 2020 delivered **108% revenue growth** driven by simultaneous gains in order volume and AOV. By 2022 the situation had reversed — revenue fell **47% year-over-year**, order count dropped **36%**, and AOV declined **18%**. All three metrics declining together confirms a broad demand contraction, not a product or channel-specific issue.
- Non-loyalty customers still outspend loyalty members, generating **61% of total revenue** at a higher AOV of **$274 vs $240**. However loyalty revenue grew **6x from $415K to $2.7M** while non-loyalty collapsed from $7.2M to $2.2M. By 2022 the two groups were nearly equal, the program is gaining traction precisely as organic demand fails.
- Direct channel dominates at **82.65% of total revenue (~$23M)**. Email contributes another **11.92%**. Together they account for 95% of all sales. Affiliate and social media combined contribute under 5% — their ROI warrants review.
- Four products carry the business — the 27in 4K Gaming Monitor ($9.85M), Apple AirPods ($7.74M), MacBook Air ($6.3M), and ThinkPad Laptop ($3.2M). All four declined sharply in 2022 with no replacement products in the catalog positioned to fill the gap.
- MacBook Air is the highest-risk product, **11.4% refund rate** at $6.3M revenue puts it in the top-right danger quadrant. ThinkPad follows at **11.8%** with lower revenue limiting the damage. Gaming Monitor and AirPods are healthy despite high volume. Note: 2022 refund data is incomplete and shows 0% — this reflects missing data, not actual performance.

## Data Structure and ERD (Entity Relationship Diagram)
<img width="1875" height="1114" alt="Elist - ERD" src="https://github.com/user-attachments/assets/350e8c32-48f3-4edd-92ed-df76e876579b" />

# Recommendations
## Sales & Revenue (Finance, Executive Leadership)

- Investigate the 2022 decline by channel and product before setting future targets
- Use $586K monthly average as the ongoing performance benchmark
- Do not use 2020 as a baseline for forecasting — treat it as a pandemic anomaly

## Product (Merchandising, Inventory)

- Prioritize inventory and marketing for Gaming Monitor and AirPods — 61% of revenue
- Urgently investigate MacBook Air refund root cause — 11.4% rate at $6.3M revenue is costly
- Review Apple iPhone for potential removal — high refund rate, low volume, underperforming revenue

## Loyalty Program (Customer Retention, Marketing)

- Keep and expand the loyalty program — it is the only metric growing as demand softens
- Redesign offers to incentivize higher-value purchases and close the $34 AOV gap vs non-loyalty members

## Marketing (Growth, Marketing)

- Double down on direct and email — they drive 95% of revenue
- Audit affiliate and social media by AOV and refund rate, not just revenue, before cutting or expanding

## Refunds (Operations, Customer Support)

- Investigate MacBook Air and ThinkPad return root causes — product descriptions, shipping, quality
- Recover 2022 refund data before making any refund-based business decisions


# Assumptions and Caveats

- 2022 refund data is incomplete — 0% refund rate reflects missing data, not actual performance
- PURCHASE_MONTH was stored as an Excel serial number and converted to date format for analysis
- All revenue figures are in USD — no currency conversion applied
- 1.25% of orders had an unknown marketing channel and were excluded from channel analysis
- Product name variants were cleaned and grouped — minor revenue discrepancies may exist
- No customer ID field in the dataset — repeat purchase rate and lifetime value could not be calculated
- 2020 figures are anomalous — pandemic-driven demand spike should not be used as a forecast baseline


# Tools Used
- Microsoft Excel - Data cleaning, pivot table analysis, initial exploration
- BigQuery - SQL querying, data extraction, aggregation, and analysis
- Tableau - Dashboard creation, visual analytics, Tableau Story
- GitHub - Project documentation and portfolio presentation
