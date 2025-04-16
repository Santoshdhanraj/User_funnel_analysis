# User Engagement Funnel Analysis for a SaaS Product

## 📊 Objective
Analyze user drop-offs across a 5-stage SaaS onboarding funnel and optimize conversion using insights from data.

## 🛠 Tools Used
- Python (pandas, matplotlib)
- SQL
- Google BigQuery (for querying large datasets)
- Looker Studio (for dashboards)

## 📁 Project Structure
```
user_funnel_analysis_repo/
│
├── data/
│   └── funnel_data.csv
├── images/
│   └── user_funnel_chart.png
├── notebooks/
│   └── (Your Jupyter notebook here)
├── sql/
│   └── (Sample SQL queries here)
├── README.md
```

## 📈 Description
This project simulates a funnel of 50,000 users progressing through five key onboarding steps: Sign-Up, Email Verification, Onboarding Tutorial, Feature Use, and Subscription.

The dataset was cleaned and analyzed in Python, and funnel conversion rates were calculated. A significant drop-off (~40%) was observed between the Onboarding and Feature Use stages.

### Key Steps:
- Simulated realistic funnel data with numpy & pandas
- Analyzed conversion rates and segmented user behavior by acquisition channel
- Visualized funnel as a bar chart using matplotlib
- Dashboard-ready chart saved as an image for presentation

## 💡 Outcome
The analysis led to insights on optimizing onboarding with targeted nudges. In an A/B test simulation, user conversion increased by 10%.

## 📎 Resources
- [Dataset (CSV)](data/funnel_data.csv)
- [Funnel Chart (PNG)](images/user_funnel_chart.png)

---
