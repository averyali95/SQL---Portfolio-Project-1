-- Join tables together to see if the hotel revenue is growing YoY as well as by hotel type

-- Combine the three yearly hotel tables into one temporary table
WITH Hotels AS (
SELECT * FROM hotel_2018
UNION
SELECT * FROM hotel_2019
UNION
SELECT * FROM hotel_2020)

-- Add week nights + weekend nights multiply by ADR (daily rate)
SELECT arrival_date_year, hotel, ROUND(SUM((stays_in_weekend_nights + stays_in_week_nights) * adr),2) AS Revenue 
FROM Hotels
GROUP BY arrival_date_year, hotel;