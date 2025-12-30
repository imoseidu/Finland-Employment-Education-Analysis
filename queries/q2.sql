--EMPLOYMENT GROWTH SINCE 2009 PER CATEGORY

  SELECT education_level, SUM(employed_people) AS employed_2009
  FROM v_employment_analysis
  WHERE year = 2009 AND sex = 'Total'
  GROUP BY education_level
),
latest AS (
  SELECT education_level, SUM(employed_people) AS employed_latest
  FROM v_employment_analysis
  WHERE year = (SELECT MAX(year) FROM v_employment_analysis)
    AND sex = 'Total'
  GROUP BY education_level
)
SELECT
  l.education_level,
  employed_2009,
  employed_latest,
  employed_latest - employed_2009 AS absolute_change,
  ROUND(
    100.0 * (employed_latest - employed_2009) / employed_2009,
    2
  ) AS percent_change
FROM latest l
JOIN base b USING (education_level)
ORDER BY absolute_change DESC;
