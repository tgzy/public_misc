library(data.table)
library(dtplyr)
library(dplyr, warn.conflicts = FALSE)
library(NHSRdatasets)

df <- NHSRdatasets::stranded_data

system.time(df <- df[rep(seq_len(nrow(df)), each = 2000),])

strand_dt_lazy <- lazy_dt(df)
#rm(df)

strand_dt_lazy %>%
  filter(care.home.referral == 1) %>%
  group_by(stranded.label) %>%
  mutate(mean_age = mean(age)) %>%
  show_query()

output_dt <- strand_dt_lazy %>%
  filter(care.home.referral == 1) %>%
  group_by(stranded.label) %>%
  mutate(mean_age = mean(age)) %>%
  as.data.table()

output_df <- strand_dt_lazy %>%
  filter(care.home.referral == 1) %>%
  group_by(stranded.label) %>%
  mutate(mean_age = mean(age)) %>%
  as_tibble()
