-- Partitioning the booking table by start_date (Range Partitioning)

-- Drop old table if exists
DROP TABLE IF EXISTS booking_partitioned;

CREATE TABLE booking_partitioned (
    booking_id INT NOT NULL,
    property_id INT,
    user_id INT,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    total_price DECIMAL(10,2) NOT NULL,
    status ENUM('pending', 'confirmed', 'canceled') NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (booking_id, start_date)
)
PARTITION BY RANGE (YEAR(start_date)) (
    PARTITION p2023 VALUES LESS THAN (2024),
    PARTITION p2024 VALUES LESS THAN (2025),
    PARTITION p2025 VALUES LESS THAN (2026),
    PARTITION pFuture VALUES LESS THAN MAXVALUE
);

-- Example Test Query: Fetch bookings for a given date range
SELECT * 
FROM booking_partitioned
WHERE start_date BETWEEN '2025-01-01' AND '2025-06-30';
