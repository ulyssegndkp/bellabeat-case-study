# 02_merge_and_export_daily.R

library(tidyverse)
library(lubridate)
library(janitor)

# Merge activity + sleep
daily_merged <- daily_activity %>%
  left_join(daily_sleep, by = c("id", "date"))

# Then steps
daily_merged <- daily_merged %>%
  left_join(daily_steps, by = c("id", "date"))

# Then calories
daily_merged <- daily_merged %>%
  left_join(daily_calories, by = c("id", "date"))

glimpse(daily_merged)
summary(daily_merged)
n_distinct(daily_merged$id)
nrow(daily_merged)

# Fix calories columns
daily_merged <- daily_merged %>%
  mutate(calories = coalesce(calories.x, calories.y, calories)) %>%
  select(-calories.x, -calories.y)

summary(daily_merged)

# Add weekday label
daily_merged <- daily_merged %>%
  mutate(weekday = wday(date, label = TRUE, abbr = TRUE))

# Create a version safe for Tableau (clean names, date as char)
daily_export <- daily_merged %>%
  clean_names() %>%
  mutate(date = as.character(date))

# Export merged file for Tableau
write_csv(daily_export, "data/processed/daily_merged_clean.csv")
write.csv(daily_export, "data/processed/daily_merged_tableau.csv",
          row.names = FALSE,
          fileEncoding = "UTF-8")
