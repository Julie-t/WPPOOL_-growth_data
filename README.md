# 📊 WPPOOL User Growth & Conversion Analysis

This project presents an end-to-end data analysis solution for WPPOOL's 20K user dataset. It focuses on understanding user behavior, optimizing Free-to-Pro upgrades, analyzing churn, and simulating the impact of marketing improvements using Python and Tableau.

---

## 📁 Project File

- `solution.ipynb`: Main Jupyter Notebook containing all analysis, KPI calculations, A/B test simulations, and visual preparation steps.

---

## 🧾 Objectives

- Analyze WPPOOL’s user engagement and revenue trends.
- Identify the drivers of churn and Pro upgrades.
- Simulate the business impact of improving the landing page conversion rate.
- Evaluate a proposed A/B test using statistical rigor.
- Prepare Tableau-ready exports for visualization and reporting.

---

## 📊 Key Features Covered

### 1. **Data Preparation**
- Loaded dataset: `wppool_growth_data_sample_20k.csv`
- Parsed and converted date fields: `install_date`, `last_active_date`, `pro_upgrade_date`
- Filled missing values in `plan_type` as `"unknown"`
- Created new fields:
  - `upgraded_to_pro`: based on presence of `pro_upgrade_date`
  - `days_retained` and `upgrade_time`: to measure engagement and upgrade behavior
  - `engagement_level`: quantile-based binning from `total_sessions`

---

### 2. **KPI Calculation**
- **Churn Rate** (overall & by subscription type)
- **Average Revenue Per User (ARPU)**
- **Upgrade Time** (from Free to Pro)
- **Free-to-Pro Upgrade Rate**
- **Top revenue-generating plan types**
- **Top countries by sessions and upgrades**

---

### 3. **User Engagement Analysis**
- Identified top 5 most active users based on `total_sessions`
- Country-level aggregation for total sessions and upgrade time
- Binned engagement levels into `Low`, `Medium`, `High`, `Very High`
- Computed average upgrade time by engagement level

---

### 4. **Conversion Scenario Simulation**

## 📈 Scenario Modeling

We simulated a 10% boost in landing page conversion rate:

| Metric                  | Value    |
|-------------------------|----------|
| Current Free Users      | 5,000    |
| New Free Users          | 5,500    |
| Current Pro Upgrades    | 400      |
| New Pro Upgrades        | 440      |
| Increase in Pro Upgrades| **+40**  |


## 5. 📊 A/B Testing Simulation

A simulated **Chi-Square A/B test** was conducted to evaluate the effectiveness of a landing page variant.

### 🔬 Scenario
- **Control Group**: 5.0% conversion rate
- **Test Group**: 5.6% conversion rate (a 12% relative lift)
- Sample size: 50,000 users per group

### 🧪 Method
A reusable function was created to perform a Chi-Square test on conversion data

*Conclusions & Next Steps**  
    - Key insights on engagement, churn drivers, and conversion optimization  
    - Recommendations for rolling out winning A/B variants  
    - Suggestions for further analysis (power analysis, confidence intervals, multi-variant tests)

## 🧰 Tools Used

- Python (pandas, numpy, scipy, seaborn, matplotlib)
- Jupyter Notebook
- Tableau (for dashboard and visualization)
- The dashboard link is attached https://public.tableau.com/app/profile/edna.maina/viz/GrowthDataDashboard_17507676712530/Dashboard1?publish=yes

---
## 🚀 How to Reproduce

1. Clone the repo  
2. Run `preprocessing_notebook.ipynb` to clean and generate KPIs  
3. Export cleaned data using `df.to_csv('processed_data.csv')`  
4. Load `processed_data.csv` into Tableau  
5. Explore dashboards in `wppool_dashboard.twbx`

---

## 📬 Contact

For questions or feedback, please contact eddyjmaina2003@gmail.com

---

