WITH Hotels AS (
SELECT * FROM hotel_2018
UNION
SELECT * FROM hotel_2019)

-- Num of bookings in a given month
SELECT arrival_date_month AS 'Booking Month', count(*) AS 'num_of_bookings'
FROM Hotels
GROUP BY arrival_date_month
ORDER BY num_of_bookings;

-- BASED ON total bookings mid year, Q3 into Q4 is when the most bookings occur. Most likely due to sumemr vacations and Q4 holiday time. 
-- This info is taken from 2018 and 2019 as the 2020 data set is not fully complete for the year. It is only inlcudes Jan - August which might skew the data