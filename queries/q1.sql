-- HIGHEST EMPLOYMENT BY CATEGORIES IN 2024

SELECT
  education_level,
  SUM(employed_people) AS employed_people
FROM v_employment_analysis
WHERE year = (SELECT MAX(year) FROM v_employment_analysis)
  AND sex = 'Total'
GROUP BY education_level
ORDER BY employed_people DESC;

