-- Finding the total number of bookings by each user with COUNT and GROUP BY clause
-- Used Join to show users with zero booings

SELECT u.user_id, 
  u.name, 
  COUNT(b.booking_id) AS "Number of Bookings"
FROM users u
LEFT JOIN booking b 
ON u.user_id = b.user_id
GROUP BY user_id, name;

-- Ranking properties based on the total number of bookings 
-- Using window function RANK 
-- Using Join also to show properties with zero bookings




