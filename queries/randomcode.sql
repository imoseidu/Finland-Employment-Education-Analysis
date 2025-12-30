-- Employment by education level in 2009 (Total population)

SELECT
  education_level,
  employed_thousands
FROM employed_by_education
WHERE year = 2009
  AND sex = 'Total'
ORDER BY employed_thousands DESC;

