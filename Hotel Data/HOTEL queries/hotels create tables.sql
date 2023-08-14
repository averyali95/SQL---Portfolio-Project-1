CREATE TABLE `meal_cost`(
    `meal` VARCHAR(255) NOT NULL,
    `cost` DOUBLE(8, 2) NOT NULL
);
ALTER TABLE
    `meal_cost` ADD PRIMARY KEY(`meal`);
CREATE TABLE `Market_segment`(
    `Discount` DOUBLE(8, 2) NOT NULL,
    `Market_segment` VARCHAR(255) NOT NULL
);
ALTER TABLE
    `Market_segment` ADD PRIMARY KEY(`Market_segment`);
CREATE TABLE `hotel_booking`(
    `hotel` TEXT NULL,
    `is_canceled` INT NULL,
    `lead_time` INT NULL,
    `arrival_date_year` INT NULL,
    `arrival_date_month` TEXT NULL,
    `arrival_date_week_number` INT NULL,
    `arrival_date_day_of_month` INT NULL,
    `stays_in_weekend_nights` INT NULL,
    `stays_in_week_nights` INT NULL,
    `adults` INT NULL,
    `children` INT NULL,
    `babies` INT NULL,
    `meal` TEXT NULL,
    `country` TEXT NULL,
    `market_segment` TEXT NULL,
    `distribution_channel` TEXT NULL,
    `is_repeated_guest` INT NULL,
    `previous_cancellations` INT NULL,
    `previous_bookings_not_canceled` INT NULL,
    `reserved_room_type` TEXT NULL,
    `assigned_room_type` TEXT NULL,
    `booking_changes` INT NULL,
    `deposit_type` TEXT NULL,
    `agent` TEXT NULL,
    `company` TEXT NULL,
    `days_in_waiting_list` INT NULL,
    `customer_type` TEXT NULL,
    `adr` DOUBLE NULL,
    `required_car_parking_spaces` INT NULL,
    `total_of_special_requests` INT NULL,
    `reservation_status` TEXT NULL,
    `reservation_status_date` TEXT NULL
);
ALTER TABLE
    `hotel_booking` ADD CONSTRAINT `hotel_booking_meal_foreign` FOREIGN KEY(`meal`) REFERENCES `meal_cost`(`meal`);
ALTER TABLE
    `hotel_booking` ADD CONSTRAINT `hotel_booking_market_segment_foreign` FOREIGN KEY(`market_segment`) REFERENCES `Market_segment`(`Market_segment`);