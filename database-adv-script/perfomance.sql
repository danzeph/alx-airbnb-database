-- Query to retrieve all bookings with user details, property details, and payment details
-- Initial Query Without Indexing 
SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    b.total_price,
    u.user_id,
    u.first_name,
    u.last_name,
    CONCAT(u.first_name, ' ',u.last_name) AS user_name,
    u.email,
    p.property_id,
    p.name AS property_name,
    p.location,
    p.pricepernight,
    pm.payment_id,
    pm.amount AS payment_amount,
    pm.payment_method
FROM booking b
JOIN users u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
LEFT JOIN payment pm ON b.booking_id = pm.booking_id
WHERE pm.payment_id IS NOT NULL;

-- Creating Indexes on the booking status and start date
-- Selecting only necessary colums 
CREATE INDEX idx_booking_status ON booking(status);
CREATE INDEX idx_booking_start_date ON booking(start_date);

SELECT 
    b.booking_id,
    b.start_date,
    b.end_date,
    b.status,
    u.user_id,
    u.first_name,
    u.last_name,
    p.property_id,
    p.name AS property_name,
    pm.payment_id,
    pm.amount AS payment_amount
FROM booking b
JOIN users u ON b.user_id = u.user_id
JOIN property p ON b.property_id = p.property_id
LEFT JOIN payment pm ON b.booking_id = pm.booking_id;


