--Partitioning the booking tablee based on start_date

SELECT *,
  RANK() OVER (PARTITION BY start_date ORDER BY end_date DESC) AS ranks
FROM booking;


