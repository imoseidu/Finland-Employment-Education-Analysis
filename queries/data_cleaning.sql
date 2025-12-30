
-- CLEANING DATA

SELECT
  education_level,
  employed_thousands
FROM employed_by_education
WHERE year = 2009
  AND sex = 'Total'
ORDER BY employed_thousands DESC;

-- CHECKING DATA

-- amount of rows
SELECT COUNT(*) FROM employed_by_education;
-- when was data recorded
SELECT MIN(year), MAX(year) FROM employed_by_education;
-- what values for sex?
SELECT DISTINCT sex FROM employed_by_education;
-- education categories
SELECT DISTINCT education_level FROM employed_by_education ORDER BY 1;
-- missing values
SELECT
  SUM(year IS NULL) AS missing_year,
  SUM(sex IS NULL) AS missing_sex,
  SUM(education_level IS NULL) AS missing_edu,
  SUM(employed_thousands IS NULL) AS missing_employed
FROM employed_by_education;


-- FURTHER CLEANING
DROP VIEW IF EXISTS v_employment_analysis;
CREATE VIEW v_employment_analysis AS
SELECT
  year,
  sex,
  education_level,
  employed_thousands * 1000 AS employed_people
FROM employed_by_education
WHERE education_level != 'Total';
