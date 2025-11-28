--Partitioning the booking tablee based on start_date

SELECT *,
  RANK() OVER ( ORDER BY start_date DESC) AS ranks
FROM booking;


