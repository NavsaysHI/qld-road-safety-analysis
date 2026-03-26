# Queensland Road Safety Analysis (2001–2024)

An end-to-end data analysis project exploring 23 years of Queensland road crash data using SQL, Excel, and Tableau.

View the interactive dashboard: https://public.tableau.com/views/QueenslandRoadSafetyAnalysis20012024/Dashboard1?:language=en-GB&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link

---

## Project Overview

This project analyses 408,271 road crash records from the Queensland Government Open Data Portal, covering fatal, hospitalisation, medical treatment, minor injury and property damage crashes from January 2001 to December 2024.

The analysis uncovers patterns in crash timing, location, severity, and demographics to tell a data-driven story about road safety in Queensland.

---

## Tools Used

- Excel — data cleaning and preparation
- SQLite and DB Browser — data storage and SQL analysis queries
- Tableau Public — interactive dashboard
- GitHub — version control and portfolio hosting

---

## Key Questions Analysed

1. What is the breakdown of crashes by severity across Queensland?
2. Are road fatalities increasing or decreasing over time?
3. What time of day are crashes and fatalities most likely to occur?
4. Which suburbs have the most crashes and highest fatality rates?
5. Which crash types are most deadly per incident?
6. Who is most at risk by age, gender and road user type?

---

## Key Findings

- 6,262 fatal crashes recorded across Queensland over 23 years
- 2007 was the deadliest year with 338 fatalities
- Road fatalities declined 42% from 2007 to 2019 but have risen again since 2020
- 3pm is the most dangerous hour with 34,999 crashes
- Late night crashes between midnight and 4am have the highest fatality rate despite lower volumes
- Head-on crashes have a 9.6% fatality rate — 37x more deadly than rear-end crashes
- Caboolture has the highest fatal crash rate among the top 10 suburbs despite ranking 3rd for total crashes
- Drivers aged 17 to 24 are the highest risk group with 61,817 casualties recorded

---

## Dashboard Visualisations

1. Crash Severity Overview — breakdown of all 408,271 crashes by severity level
2. Fatal Trend by Year — 23 year trend line showing the decline and recent rise in fatalities
3. Crashes and Fatalities by Hour — dual axis chart showing volume and fatality rate across 24 hours
4. Top 10 Dangerous Suburbs — horizontal bar chart coloured by fatal crash count
5. Crash Nature vs Fatal Rate — bar chart showing head-on as the deadliest crash type
6. Casualty Demographics Heatmap — age group vs road user type showing 17 to 24 drivers most at risk
7. Crash Location Map — all 408,271 crashes plotted across Queensland road network coloured by severity

---

## Data Source

Queensland Government Open Data Portal
https://www.data.qld.gov.au/dataset/crash-data-from-queensland-roads

Files used:
- crash_locations.csv — 408,271 rows covering all crashes from 2001 to 2024
- road_casualties.csv — 37,500 rows of casualty demographics

Raw data files are not included in this repository due to file size. Please download directly from the source above.

---

## Files

| File | Description |
|---|---|
| analysis_queries.sql | All 6 SQL queries with comments |
| q1_crash_severity_overview.csv | Crash count and percentage by severity |
| q2_fatal_trend_by_year.csv | Fatal crashes per year 2001 to 2024 |
| q3_crashes_by_hour.csv | Total and fatal crashes by hour of day |
| q4_top10_dangerous_suburbs.csv | Top 10 suburbs by crash volume and fatals |
| q5_crash_factors.csv | Crash nature vs total and fatal crashes |
| q6_casualty_demographics.csv | Casualties by age group, gender and road user type |

---

## Author

Nav
GitHub: https://github.com/NavsaysHI
LinkedIn: www.linkedin.com/in/navdeep-rao-58504311a
