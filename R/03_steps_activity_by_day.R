# 03_steps_activity_by_day.R

library(tidyverse)
library(lubridate)


steps_activity_by_day <- daily_merged %>%
  mutate(weekday = wday(date, label = TRUE, abbr = TRUE)) %>%
  group_by(weekday) %>%
  summarise(
    # Steps
    total_steps = sum(total_steps, na.rm = TRUE),
    avg_steps   = mean(total_steps, na.rm = TRUE),

    # Distance
    total_distance = sum(total_distance, na.rm = TRUE),
    avg_distance   = mean(total_distance, na.rm = TRUE),

    # Very active minutes
    total_very_active_minutes = sum(very_active_minutes, na.rm = TRUE),
    avg_very_active_minutes   = mean(very_active_minutes, na.rm = TRUE),

    # Lightly active minutes
    total_lightly_active_minutes = sum(lightly_active_minutes, na.rm = TRUE),
    avg_lightly_active_minutes   = mean(lightly_active_minutes, na.rm = TRUE),

    # Sedentary minutes
    total_sedentary_minutes = sum(sedentary_minutes, na.rm = TRUE),
    avg_sedentary_minutes   = mean(sedentary_minutes, na.rm = TRUE),

    # Calories
    total_calories = sum(calories, na.rm = TRUE),
    avg_calories   = mean(calories, na.rm = TRUE),

    n_records = n()
  ) %>%
  arrange(weekday)

head(steps_activity_by_day)

write_csv(steps_activity_by_day, "data/processed/steps_activity_by_day.csv")
