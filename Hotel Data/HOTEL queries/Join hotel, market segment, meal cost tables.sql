-- JOIN TABLE TOGETHER
WITH Hotels AS (
SELECT * FROM hotel_2018
UNION
SELECT * FROM hotel_2019
UNION
SELECT * FROM hotel_2020)

SELECT *
FROM Hotels AS h
LEFT OUTER JOIN meal_cost AS ml
ON h.meal = ml.meal
LEFT OUTER JOIN market_segment AS ms
ON h.market_segment = ms.market_segment
-- LIMIT 1000;