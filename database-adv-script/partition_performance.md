# Partition Performance Report

## Objective:
Optimize query performance on the large `bookings` table by implementing partitioning using the `start_date` column.

## Implementation:
- Partitioned the `bookings` table using PostgreSQL’s `RANGE` partitioning.
- Created yearly partitions: `bookings_2022`, `bookings_2023`, and `bookings_2024`.