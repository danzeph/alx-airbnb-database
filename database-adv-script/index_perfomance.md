# Improving query perfomance by creating indexes

## 1. High usage columns
### Users Table
* user_id        - for lookups and authentication.
* role           - for filtering by role (admin/host/guest).
* created_at     - for sorting/reporting.

### Property Table
* host_id        - used in joins between users and properties. 
* location       - for property search filters.
* pricepernight  - for range-based filters.

### Booking Table
* property_id    - used in joins with properties.
* user_id        - listing bookings by user.
* start_date     - used in availability/calender queries.
* end_date       - used in availability/calender queries.
* status         - filter by booking status.



## Query Perfomance Measurement (Before and After)
1. Query one: 
  `EXPLAIN SELECT * FROM booking WHERE property_id = 101;`
  * Before Index
    + Full table scan
    + rows ≈ 14 (depends on dataset)
  * After Index
3. Query tow
4. Query three
5. 
  `EXPLAIN SELECT * FROM booking WHERE property_id = 101;`
  
