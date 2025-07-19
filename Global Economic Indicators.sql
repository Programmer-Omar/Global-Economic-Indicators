CREATE DATABASE Macroeconomic_DS;

USE Macroeconomic_DS;

-- Checking the whole dataset
SELECT * FROM Macroeconomic;

-- Q1: Cumulative Inflation (CPI) over the Period

-- 1) What are the ten countries with the highest inflation during the period?
SELECT 
  country_name,
  EXP(SUM(LOG(1 + Inflation_CPI / 100))) - 1 AS Highest_inflation_Countries
FROM 
  Macroeconomic
GROUP BY 
	country_name
ORDER BY 
	Highest_inflation_Countries DESC
LIMIT 10;

-- 2) What are the ten countries with the lowest inflation during the period?
SELECT 
  country_name,
  EXP(SUM(LOG(1 + Inflation_CPI / 100))) - 1 AS Lowest_inflation_Countries
FROM 
  Macroeconomic
GROUP BY 
	country_name
ORDER BY 
	Lowest_inflation_Countries ASC
LIMIT 10;

-- Q2: Cumulative GDP Growth over the Period

-- 1) What are the ten countries with the highest economic growth during the period?
SELECT 
  country_name,
  EXP(SUM(LOG(1 + GDP_Growth / 100))) - 1 AS Highest_GDP_Growth_Countries
FROM 
  Macroeconomic
GROUP BY 
	country_name
ORDER BY 
	Highest_GDP_Growth_Countries DESC
LIMIT 10;

-- 2) What are the ten countries with the lowest economic growth during the period?
SELECT 
  country_name,
  EXP(SUM(LOG(1 + GDP_Growth / 100))) - 1 AS Lowest_GDP_Growth_Countries
FROM 
  Macroeconomic
GROUP BY 
	country_name
ORDER BY 
	Lowest_GDP_Growth_Countries ASC
LIMIT 10;

-- Q3: GDP Growth Stability over the Period

-- 1) what are the most five stable countries in term of percentage change in economic growth?
SELECT
    country_name,
    STDDEV(GDP_Growth) AS GDP_Growth_Stability
FROM
    Macroeconomic
GROUP BY
    country_name
ORDER BY
    GDP_Growth_Stability ASC
LIMIT 5;

-- Q4: Unemployment Rate over the Period

-- 1) What is the trend in unemployment rate across countries over the period?
SELECT 
	year, 
    ROUND(AVG(Unemployment_Rate),2) AS Average_Unemployment_Rate_Globally
FROM 
	Macroeconomic
GROUP BY 
	year;

-- 2) What are the five countries with highest unemployment rate over the period? Which year?
SELECT
    country_name,
    year,
    Unemployment_Rate AS Highest_Unemployment_Rate
FROM (
    SELECT
		country_name, year, Unemployment_Rate,
        ROW_NUMBER() OVER (PARTITION BY country_name ORDER BY Unemployment_Rate DESC, year DESC) as rn
    FROM
        Macroeconomic
) AS ranked_data
WHERE
    rn = 1
ORDER BY
    Highest_Unemployment_Rate DESC
LIMIT 5;
    
-- Q5: Cumulative Real Return over the Period

-- 1) What are the ten countries with the highest Real Return during the period?
SELECT 
  country_name,
  EXP(SUM(LOG(1 + Interest_Rate / 100))) - 1 AS Highest_Cumulative_Real_Return
FROM 
  Macroeconomic
GROUP BY 
	country_name
ORDER BY 
	Highest_Cumulative_Real_Return DESC
LIMIT 10;

-- 2) What are the ten countries with the lowest Real Return during the period?
SELECT 
  country_name,
  EXP(SUM(LOG(1 + Interest_Rate / 100))) - 1 AS Lowest_Cumulative_Real_Return
FROM 
  Macroeconomic
GROUP BY 
	country_name
ORDER BY 
	Lowest_Cumulative_Real_Return ASC
LIMIT 10;