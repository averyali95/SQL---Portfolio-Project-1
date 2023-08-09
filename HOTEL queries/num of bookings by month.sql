-- Combine all tables into one temp table
WITH Hotels AS (
SELECT * FROM hotel_2018
UNION
SELECT * FROM hotel_2019
UNION
SELECT * FROM hotel_2020)

-- Num of bookings in a given month
SELECT arrival_date_year, arrival_date_month AS 'Booking Month 2018', count(*) AS 'num of bookings'
FROM Hotels
GROUP BY arrival_date_month, arrival_date_year
ORDER BY arrival_date_year, MONTH(arrival_date_month);

