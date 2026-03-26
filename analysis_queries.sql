-- ================================================
-- Queensland Road Safety Analysis
-- Author: Nav
-- Data: Queensland Government Open Data Portal
-- Period: 2001-2024
-- ================================================

-- Query 1: Crash Count by Severity
SELECT 
    Crash_Severity,
    COUNT(*) AS Total_Crashes,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM crash_locations), 2) AS Percentage
FROM crash_locations
GROUP BY Crash_Severity
ORDER BY Total_Crashes DESC;

-- Query 2: Fatal Crashes by Year (Trend Over Time)
SELECT 
    Crash_Year,
    COUNT(*) AS Fatal_Crashes
FROM crash_locations
WHERE Crash_Severity = 'Fatal'
GROUP BY Crash_Year
ORDER BY Crash_Year ASC;

-- Query 3: Crashes by Hour of Day
SELECT 
    Crash_Hour,
    COUNT(*) AS Total_Crashes,
    SUM(CASE WHEN Crash_Severity = 'Fatal' THEN 1 ELSE 0 END) AS Fatal_Crashes
FROM crash_locations
WHERE Crash_Hour BETWEEN 0 AND 23
GROUP BY Crash_Hour
ORDER BY Crash_Hour ASC;

-- Query 4: Top 10 Most Dangerous Suburbs
SELECT 
    Loc_Suburb,
    COUNT(*) AS Total_Crashes,
    SUM(CASE WHEN Crash_Severity = 'Fatal' THEN 1 ELSE 0 END) AS Fatal_Crashes
FROM crash_locations
GROUP BY Loc_Suburb
ORDER BY Total_Crashes DESC
LIMIT 10;

-- Query 5: Crashes by Nature vs Fatal Rate
SELECT
    Crash_Nature,
    COUNT(*) AS Total_Crashes,
    SUM(CASE WHEN Crash_Severity = 'Fatal' THEN 1 ELSE 0 END) AS Fatal_Crashes
FROM crash_locations
GROUP BY Crash_Nature
ORDER BY Total_Crashes DESC;

-- Query 6: Casualty Demographics
SELECT
    Casualty_AgeGroup,
    Casualty_Gender,
    Casualty_RoadUserType,
    SUM(Casualty_Count) AS Total_Casualties
FROM road_casualties
WHERE Casualty_AgeGroup != 'Unknown'
AND Casualty_Gender != 'Unknown'
GROUP BY Casualty_AgeGroup, Casualty_Gender, Casualty_RoadUserType
ORDER BY Total_Casualties DESC;

-- Tableau Calculated Field (Fatal Rate %)
-- Used in Crash Nature viz:
-- SUM([Fatal_Crashes]) / SUM([Total_Crashes]) * 100