Links: 

[Medium article](https://medium.com/@ulysse.gnidokponou/how-can-a-wellness-technology-company-play-it-smart-cb2462a6f1d1)

[Tableau Public dashboard](https://public.tableau.com/app/profile/ulysse.gnidokponou/viz/BELLABEAT_17654102267480/Sheet1)

# Bellabeat Case Study – Smart Device Usage Analysis

This repository contains my end-to-end data analysis of Bellabeat smart device data,
following the Google Data Analytics Capstone structure.

I used **R** for data cleaning & analysis and **Tableau** for visualization.

## 1. Business Task

Analyze user activity, sleep, and sedentary behavior from smart device data to
generate insights that Bellabeat can use to improve product features and targeted
marketing campaigns.

Key questions:
- How do daily steps, distance, and sedentary time vary across the week?
- How are activity levels related to calories burned?
- What patterns do we see in sleep duration and sedentary time?
- What opportunities exist to encourage healthier habits and increase engagement?

## 2. Data

Original dataset: [FitBit Fitness Tracker Data on Kaggle](https://www.kaggle.com/datasets/arashnic/fitbit)

Files used in this analysis:
- `data/processed/daily_merged_tableau.csv`
- `data/processed/steps_activity_by_day_4.2.csv`
- `data/processed/sleep_summary.csv`

## 3. Tools

- R (tidyverse, janitor, lubridate) — data preparation & analysis
- Tableau Public — interactive visualizations
- GitHub — portfolio hosting & version control
- Medium — narrative case study write-up

## 4. Project Structure

```text
bellabeat-case-study/
│
├── R/
│   ├── 01_setup_and_load.R          # Libraries, data loading
│   ├── 02_merge_and_export_daily.R  # Cleaning, merging, export
│   ├── 03_steps_activity_by_day.R   # Weekly activity analysis
│   └── 04_sleep_summary.R           # Sleep metrics & efficiency
│
├── data/
│   ├── raw/                         # Original Fitbit CSV files
│   └── processed/
│       └── rstudio-export/          # Cleaned datasets for Tableau
│
├── figures/
│   ├── avg_steps_per_day.png
│   ├── avg_distance_per_day.png
│   ├── avg_sedentary_per_day.png
│   ├── steps_vs_kcal.png
│   ├── vam_vs_kcal.png
│   └── sleep_vs_sedentary.png
│
├── BELLABEAT.twbx                   # Tableau packaged workbook
├── README.md
└── docs.md                          # Supplementary documentation

