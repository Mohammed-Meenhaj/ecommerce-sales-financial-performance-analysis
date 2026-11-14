# E-commerce sales and profitability

## Executive summary

The fictional sample generated BDT 1,459,250 in completed-order revenue and BDT 425,730 in gross profit, a 29.17% gross margin. Electronics dominated revenue, led by monitors. March was the strongest month by revenue and gross profit. Website led channel contribution by amount, while Social led by margin rate.

## Revenue and profitability

Of the 120 orders, 99 were completed, 11 were pending, and 10 were refunded. Gross order value across all statuses was BDT 1,741,950. Completed sales were BDT 1,459,250, with BDT 1,033,520 in COGS and BDT 425,730 in gross profit. Pending and refunded orders contribute zero to the completed financial measures.

All financial amounts in the tables below are BDT. Margin is segment gross profit divided by segment completed revenue.

## Monthly trends

| Order month | All orders | Completed orders | Revenue | Gross profit |
| --- | ---: | ---: | ---: | ---: |
| January 2026 | 38 | 28 | 477,050 | 135,510 |
| February 2026 | 35 | 33 | 292,900 | 93,780 |
| March 2026 | 47 | 38 | 689,300 | 196,440 |

February had five more completed orders than January, but less revenue and gross profit. March accounted for 47.2% of sample revenue. Revenue increased by BDT 396,400 from February to March, of which BDT 351,500 came from monitors. This is a product contribution to the observed change. The sample cannot establish the cause of demand changes.

## Product category analysis

| Category | Completed orders | Revenue | Gross profit | Margin |
| --- | ---: | ---: | ---: | ---: |
| Electronics | 45 | 1,285,600 | 359,900 | 27.99% |
| Accessories | 54 | 173,650 | 65,830 | 37.91% |

Electronics generated 88.1% of completed revenue. Monitors alone accounted for BDT 906,500 in revenue and BDT 225,400 in gross profit, or 62.1% and 52.9% of the respective totals. Accessories had more completed orders and a 9.92 percentage-point higher margin than Electronics, with a smaller absolute profit contribution.

## Regional sales

| Region | Completed orders | Revenue | Gross profit | Margin |
| --- | ---: | ---: | ---: | ---: |
| Chattogram | 17 | 433,350 | 117,230 | 27.05% |
| Dhaka | 19 | 305,200 | 84,140 | 27.57% |
| Sylhet | 20 | 275,800 | 84,060 | 30.48% |
| Rajshahi | 22 | 255,750 | 80,090 | 31.32% |
| Khulna | 21 | 189,150 | 60,210 | 31.83% |

Chattogram led revenue and gross profit, contributing 29.7% of sample revenue. Khulna had the smallest revenue total and the highest margin. Check the regional product mix and delivery costs before using these differences to allocate inventory or promotion budgets.

## Sales channel performance

| Channel | All orders | Completed orders | Revenue | Gross profit | Margin |
| --- | ---: | ---: | ---: | ---: | ---: |
| Website | 43 | 35 | 674,100 | 187,520 | 27.82% |
| Marketplace | 35 | 30 | 518,350 | 151,350 | 29.20% |
| Social | 42 | 34 | 266,800 | 86,860 | 32.56% |

Website and Social had similar completed order counts, but Website generated more than twice the revenue and gross profit. Social had the highest gross margin. Channel contribution after fees, advertising, and fulfillment cannot be calculated from these fields.

## Recommended next steps

1. **Track monitor concentration.** Review weekly revenue, gross profit, units, and stock availability by product before changing reorder quantities.
2. **Test accessory bundles.** Accessories have the higher measured gross margin. Compare incremental gross profit per completed order after discounts in a small bundle test.
3. **Build a channel contribution view.** Add marketplace fees, acquisition cost, fulfillment, and refunds before reallocating spend. Use the existing channel and region cuts to check where the ranking changes after costs.

## Dataset limitations

This is a fictional sample of 120 rows from January through March 2026. The workbook and CSV represent the same underlying sample. Three months cannot establish seasonality or a forecast. Order dates drive the monthly breakdown, and the data lacks payment dates, refund amounts and timing, traffic, ad spend, customer identifiers, delivery costs, tax, and overhead. Gross profit is limited to product sales less product COGS. The observations describe this sample and have no measured client impact.

[Sample data](data/ecommerce_sales_mysql.csv) · [Excel workbook](excel/Ecommerce_Portfolio_Analysis.xlsx) · [MySQL queries](sql/02_business_analysis.sql)

