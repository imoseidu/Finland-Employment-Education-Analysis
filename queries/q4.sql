-- EMPLOYMENT SHARES OVERTIME

SELECT
  year,
  education_level,
  SUM(employed_people) * 1.0
    / SUM(SUM(employed_people)) OVER (PARTITION BY year)
    AS employment_share
FROM v_employment_analysis
WHERE sex = 'Total'
GROUP BY year, education_level;
