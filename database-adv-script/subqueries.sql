--Query to find all properties where the average rating is greater than 4.0 using a sub query
SELECT *
FROM properties
WHERE property_id IN  (
  SELECT property_id 
  FROM ratings
  GROUP BY property_id 
  HAVING AVG(rating ) > 4.0
  )

--Correlated subqery to find all users who have made more than 3 bookings

SELECT * 
FROM USERS u
WHERE (
  SELECT COUNT(booking_id)
  FROM bookings b
  WHERE b.user_id =u.user_id 
  )
  > 3.0
  
