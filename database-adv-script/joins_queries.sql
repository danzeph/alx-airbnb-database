-- INNER JOIN
-- Retrieve all bookings and the respective users 
-- who made those bookings.
-- Only bookings with matching users will appear.

SELECT 
    b.booking_id, 
    b.user_id, 
    u.name AS user_name, 
    b.property_id, 
    b.date
FROM booking b
INNER JOIN users u
ON b.user_id = u.user_id;


-- LEFT JOIN
-- Retrieve all properties and their reviews,
-- including properties that have no reviews.

SELECT 
    p.property_id, 
    p.name AS property_name, 
    r.review_id, 
    r.comment
FROM property p
LEFT JOIN review r
ON p.property_id = r.property_id;



-- FULL OUTER JOIN (simulated using LEFT + RIGHT JOIN + UNION)
-- Retrieve all users and all bookings,
-- even if the user has no booking or a booking 
-- is not linked to a user.

SELECT 
    u.user_id, 
    u.name AS user_name, 
    b.booking_id, 
    b.property_id, 
    b.date
FROM users u
LEFT JOIN booking b
ON u.user_id = b.user_id

UNION

SELECT 
    u.user_id, 
    u.name AS user_name, 
    b.booking_id, 
    b.property_id, 
    b.date
FROM users u
RIGHT JOIN booking b;

ON u.user_id = b.user_id;
