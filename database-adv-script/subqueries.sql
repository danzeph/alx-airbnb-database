--Query to find all properties where the average rating is greater than 4.0 using a sub query
SELECT *
FROM properties
WHERE property_id IN  (
  SELECT property_id 
  FROM ratings
  GROUP BY property_id 
  HAVING AVG(rating ) > 4.0
  )

