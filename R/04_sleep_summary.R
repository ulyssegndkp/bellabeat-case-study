# 04_sleep_summary.R

library(tidyverse)

sleep_summary <- daily_merged %>%
  summarise(
    avg_sleep_minutes      = mean(total_minutes_asleep, na.rm = TRUE),
    avg_time_in_bed_minutes = mean(total_time_in_bed, na.rm = TRUE),
    avg_sleep_efficiency   = mean(total_minutes_asleep / total_time_in_bed, na.rm = TRUE)
  )

sleep_summary

write_csv(sleep_summary, "data/processed/sleep_summary.csv")
