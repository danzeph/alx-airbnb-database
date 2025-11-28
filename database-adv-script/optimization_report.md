# Optimization Report after running EXPLAIN with initiary query createed in perfomance.sql file:

## Observations:
  1. `booking` table is performing a full table scan (ALL) because:
     * `b.user_id` and `b.property_id` indexes were not used.
     
  2. Joins to `users`, `property`, and `payment` are fast because primary and foreign keys were and indexed automatically.
  3. The main bottleneck is the initial scan of `booking` table.

## Optimization Recommendations
1. I created indexes on `status`, `start_price` and `end_date`.
2. I mande sure only necessary columns were selected.

## Performance after refactoring
1. Low cost and low execution time meaning less memory usage

