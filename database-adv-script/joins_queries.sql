SELECT b.booking_id, b.user_id, u.name AS user_name, b.property_id, b.date
FROM booking b
INNER JOIN users u
ON b.user_id = u.user_id

SELECT p.property_id, p.name AS property_name, r.review_id, r.comment
FROM property p
LEFT JOIN review r
ON p.property_id = r.property_id


SELECT u.user_id, u.name AS user_name, b.booking_id, b.property_id
FROM user u
LEFT JOIN booking b
ON u.user_id = b.user_id

UNION

SELECT u.user_id, u.name AS user_name, b.booking_id, b.property_id, b.date
FROM user u
RIGHT JOIN booking b
ON u.user_id = b.user_id;






