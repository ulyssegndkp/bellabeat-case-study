# 01_setup_and_load.R

# install.packages("tidyverse")
# install.packages("janitor")
# install.packages("lubridate")

library(tidyverse)
library(janitor)
library(lubridate)

# Load raw data
daily_activity <- read_csv("data/raw/dailyActivity_merged.csv")
daily_sleep    <- read_csv("data/raw/sleepDay_merged.csv")
daily_steps    <- read_csv("data/raw/dailySteps_merged.csv")
daily_calories <- read_csv("data/raw/dailyCalories_merged.csv")

# Inspect
glimpse(daily_steps)
glimpse(daily_calories)
glimpse(daily_sleep)
glimpse(daily_activity)

# Clean column names
daily_activity <- daily_activity %>% clean_names()
daily_sleep    <- daily_sleep    %>% clean_names()
daily_steps    <- daily_steps    %>% clean_names()
daily_calories <- daily_calories %>% clean_names()

# Standardize date columns
daily_activity <- daily_activity %>%
  rename(date = activity_date) %>%
  mutate(date = mdy(date))

daily_sleep <- daily_sleep %>%
  rename(date = sleep_day) %>%
  mutate(date = mdy_hms(date),
         date = as_date(date))

daily_steps <- daily_steps %>%
  rename(date = activity_day) %>%
  mutate(date = mdy(date))

daily_calories <- daily_calories %>%
  rename(date = activity_day) %>%
  mutate(date = mdy(date))

# Remove duplicate rows in sleep
daily_sleep <- daily_sleep %>%
  distinct(id, date, .keep_all = TRUE)

# Basic checks
summary(daily_activity$date)
summary(daily_sleep$date)
summary(daily_steps$date)
summary(daily_calories$date)
