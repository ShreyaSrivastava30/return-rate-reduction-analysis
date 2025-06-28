CREATE DATABASE ReturnRateReductionAnalysis

SELECT * FROM DATA

-- Data with returns
SELECT * FROM DATA
WHERE DATA.Quantity < 0



-- Return Rate by Country
SELECT 
  Country,
  COUNT(*) AS total_orders,
  SUM(CASE WHEN Quantity < 0 THEN 1 ELSE 0 END) AS total_returns,
  ROUND(SUM(CASE WHEN Quantity < 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_rate_percent
FROM data
GROUP BY Country
ORDER BY return_rate_percent DESC;



-- Return Rate by Marketing Channel
SELECT 
  Marketing_Channel,
  COUNT(*) AS total_orders,
  SUM(CASE WHEN Quantity < 0 THEN 1 ELSE 0 END) AS total_returns,
  ROUND(SUM(CASE WHEN Quantity < 0 THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS return_rate_percent
FROM data
GROUP BY Marketing_Channel
ORDER BY return_rate_percent DESC;







