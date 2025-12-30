-- GENDER GAP IN 2024

WITH males AS (
  SELECT education_level, SUM(employed_people) AS employed_males
  FROM v_employment_analysis
  WHERE sex = 'Males'
    AND year = (SELECT MAX(year) FROM v_employment_analysis)
  GROUP BY education_level
),
females AS (
  SELECT education_level, SUM(employed_people) AS employed_females
  FROM v_employment_analysis
  WHERE sex = 'Females'
    AND year = (SELECT MAX(year) FROM v_employment_analysis)
  GROUP BY education_level
)
SELECT
  m.education_level,
  employed_males,
  employed_females,
  employed_males - employed_females AS gender_gap
FROM males m
JOIN females f USING (education_level)
ORDER BY ABS(gender_gap) DESC;
