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

- R (tidyverse, lubridate, janitor, etc.)
- Tableau Public
- Medium (for the written case study)

## 4. Project Structure

```text
R/                     # R scripts for cleaning and analysis
data/raw/              # original Kaggle CSVs
data/processed/        # merged & aggregated datasets ready for viz
tableau/               # Tableau workbook (.twbx)
figures/               # exported charts used in the Medium article
docs/                  # additional notes or exports
