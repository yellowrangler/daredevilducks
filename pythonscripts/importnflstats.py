#!/usr/bin/env python

import nfl_data_py as nfl
import pandas as pd

# requires env

# Choose the years you want to load
years = [2025]

# Import weekly player statistics
weekly_stats = nfl.import_weekly_data(years)

print(weekly_stats)
quit()

# Filter for a specific week, for example Week 1
week_1_stats = weekly_stats[weekly_stats['week'] == 1]

# View the top passing or rushing leaders
print(week_1_stats[['player_name', 'recent_team', 'passing_yards', 'rushing_yards']].head())
