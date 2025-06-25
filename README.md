# 📈 WPPOOL Conversion Optimization Analysis

## 📝 Project Description

This repository contains an end-to-end exploratory data analysis and simulation of user behavior on WPPOOL's platform, focusing on:

- User conversion trends (Free → Pro)
- Retention and churn behavior
- Revenue analysis by plan type
- A/B testing simulation to evaluate the impact of a landing page change
- Scenario modeling for conversion improvement

The core analysis is implemented in the Jupyter Notebook: **`solution.ipynb`**.

---

## 📂 Files

- `solution.ipynb`: Main analysis notebook with preprocessing, KPI tracking, visualizations, and A/B testing simulation
- `wppool_growth_data_sample_20k.csv`: Sample user dataset (not included here but required)


---

## 📊 Key Features

### ✅ KPIs Tracked
- **Churn Rate** (% of users who became inactive)
- **ARPU** (Average Revenue Per User)
- **Time to Upgrade** (Free to Pro)
- **Free-to-Pro Upgrade Rate**
- **Top Plan Type by Revenue**
- **Top Countries by Sessions**

### 🔁 Retention Curve
Analyzes average retention over time based on engagement levels and country.

### 🧪 A/B Test Simulation
A chi-square test evaluates if a 10% uplift in conversion is statistically significant.

### 📈 Scenario Modeling
Estimates the increase in Pro upgrades if landing page conversion improves by 10%.

---

## 🧰 Tools Used

- Python (pandas, numpy, scipy, seaborn, matplotlib)
- Jupyter Notebook
- Tableau (for dashboard and visualization)
- The dashboard link is attached https://public.tableau.com/app/profile/edna.maina/viz/GrowthDataDashboard_17507676712530/Dashboard1?publish=yes

---

## ▶️ How to Run

1. Clone the repo or download the files
2. Open `solution.ipynb` in Jupyter Notebook or VS Code
3. Ensure the raw dataset (e.g., `wppool_growth_data_sample_20k.csv`) is in the same directory
4. Run all cells step by step to generate outputs
5. (Optional) Export cleaned data to `.csv` for Tableau

---

## 📬 Contact

For questions or feedback, please contact eddyjmaina2003@gmail.com

---

