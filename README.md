# Digital Wellness Platform — Product Feature Evaluation & A/B Test Analysis

## 📌 Project Overview

This case study evaluates a new mobile feature released by a **digital wellness platform** designed to encourage participants to log their weight more consistently.\

The analysis demonstrates:

- SQL-based **data extraction**
- Excel & R **statistical analysis**
- Power BI **A/B test visualization**

The goal: determine whether the feature improved outcomes over a 10-week period and provide actionable recommendations.

---

## 🎯 Business Objective

The product team wanted to:

1. **Measure feature impact** on user weight loss.
2. **Identify target segments** where the feature was most effective.
3. **Create a monitoring dashboard** for ongoing evaluation.

---

## 📂 Repository Structure

```
Digital_Wellness_CaseStudy/
│
├── Step1_SQL/
│   └── CaseStudy_Step1.sql
│
├── Step2_Analysis/
│   ├── weights.xlsx
│   ├── StatisticalAnalysis.Rmd
│   ├── StatisticalAnalysis.html
│
├── Step3_Effectiveness/
│   ├── ABTestDashboard.pbix
│   ├── dashboard_kpi.png
│   ├── dashboard_trend.png
│   ├── dashboard_filters.png
│
└── Documentation/
    └── CaseStudy_Notes.pdf
```

---

## 🧩 Step 1: Data Querying (SQL)

Two SQL tables contained baseline weights, feature adoption flags, and weight loss outcomes. Assessing weight loss for mobile vs. non-mobile users regardless of feature.

**SQL Query:**

```sql
SELECT
    t1.mobile,
    AVG(t2.weight_loss) AS avg_weight_loss
FROM table_1 AS t1
JOIN table_2 AS t2 ON t1.id = t2.id
GROUP BY t1.mobile;
```

**Result:**

| Mobile User | Avg Weight Loss (lbs) |
| ----------- | --------------------- |
| Yes         | 8.3                   |
| No          | 8.4                   |

📄 [View SQL Script](Step1_SQL/CaseStudy_Step1.sql)

---

## 📊 Step 2: Exploratory Data Analysis & Statistical Analysis (Excel & R)

### Data Preparation

- Cleaned `mobile` column values (Yes/No)
- Removed invalid weights
- Joined dates for time-based analysis

### Exploratory Findings

- Mobile users with the feature: **+40% average weight loss** vs without
- Non-mobile users: minimal change

### Statistical Testing

- **Mobile group:** statistically significant improvement (t-test)
- **Non-mobile group:** no significant change

📊 [Excel File](Step2_Analysis/weights.xlsx)\
📜 [RMarkdown Analysis](Step2_Analysis/StatisticalAnalysis.Rmd)

---

## 📈 Step 3: Effectiveness Dashboard (Power BI)

An interactive A/B Test dashboard was built for product and clinical managers.

**Dashboard Highlights:**

- **KPI Comparison** — Test vs Control
- **Trend Over Time** — Weight loss trajectory by cohort
- **Filters** — Start date, device type, cohort



📊 [Power BI File](Step3_Effectiveness/ABTestDashboard.pbix)

---

## ✅ Results & Recommendations

- **Recommendation:** Deploy feature to all mobile users due to significant positive impact.
- **Next Steps:**
  - Investigate why non-mobile users show higher baseline weight loss but inconsistent response.
  - Explore experiments to improve engagement for non-mobile users.

---

## 🛠️ Skills Demonstrated

- **SQL**: Data extraction, joins, aggregations
- **Excel**: Cleaning, pivot analysis
- **R**: Statistical testing, RMarkdown reporting
- **Power BI**: Interactive dashboards, A/B test visualization
- **Data Storytelling**: Translating findings into actionable recommendations

