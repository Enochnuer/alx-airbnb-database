# Database Performance Monitoring and Optimization Report

## Objective

Continuously monitor and refine database performance by analyzing query execution plans and making schema adjustments.

---

## Step 1: Query Performance Analysis

Using `EXPLAIN ANALYZE`, we analyzed several frequently used queries to identify bottlenecks.

### Query 1: Retrieve bookings by user ID

```sql
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;

-Bottleneck: No index on the user_id column, causing slow query performance.

-Change: index was added on user_id column

-improvement: execution time reduced