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



### Query Perfomance Measurement (Before and After)
1. Filter Users by Role:
  ```  SQL
EXPLAIN SELECT * FROM users WHERE role = 'guest';
  ```
  * Before Index
     + Full table scan
     + Rows ≈ 10
     + Extra: Using where

  * After Index (`idx_users_role`)
    + Index lookup on `role`
    + Fewer rows scanned
    + Faster filtering

  
### 2. Filter Properties by Location
  ```  SQL
    EXPLAIN SELECT * FROM property WHERE location = 'Accra';
  ```
  * Before Index
     + Full table scan
     + Rows ≈ 12
     + Extra: Using where

  * After Index (`idx_property_location`)
    + Index lookup on `location`
    + Only matching rows scanned
    + Faster query execution


      
### 3. Filter Bookings by Start date
  ```   SQL
    EXPLAIN SELECT * FROM booking WHERE start_date = '2025-01-10';
  ```
  * Before Index
     + Full table scan
     + Rows ≈ 14
     + Extra: Using where

  * After Index (`idx_booking_start_date`)
    + Index lookup on `start_date`
    + Only matching rows scanned
    + Faster query execution


### 4. Filter Bookings by Status
  ```   SQL
    EXPLAIN SELECT * FROM booking WHERE status = 'confirmed';
  ```
  * Before Index
     + Full table scan
     + Rows ≈ 14
     + Extra: Using where

  * After Index (`idx_booking_status`)
    + Index lookup on `status`
    + Only matching rows scanned
    + Much faster filtering



  
