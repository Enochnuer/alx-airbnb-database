EXPLAIN ANALYZE
SELECT 
    b.id AS booking_id,
    b.booking_date,
    b.status,
    u.id AS user_id,
    u.name AS user_name,
    u.email AS user_email,
    p.id AS property_id,
    p.name AS property_name,
    p.location,
    pay.id AS payment_id,
    pay.amount,
    pay.status AS payment_status
FROM 
    bookings b
JOIN users u ON b.user_id = u.id
JOIN properties p ON b.property_id = p.id
LEFT JOIN payments pay ON b.id = pay.booking_id;

## Initial Query Performance Analysis

**Query Description:**
Retrieve all bookings with user, property, and payment details.

**EXPLAIN ANALYZE Summary:**
- Full table scans on `users`, `properties`, and `payments`
- No indexes used on `user_id`, `property_id`, or `booking_id`
- Total cost: high due to nested loop joins and sequential scans

**Identified Inefficiencies:**
- Missing indexes on foreign key columns
- LEFT JOIN on payments, even when every booking has a payment

## Refactored Query & Indexing

**Changes Made:**
- Added indexes to `bookings.user_id`, `bookings.property_id`, and `payments.booking_id`
- Changed LEFT JOIN to INNER JOIN for payments to eliminate unnecessary scan when payments are guaranteed

**Results:**
- Reduced total execution time from X ms to Y ms
- Query now uses Index Scan and Hash Join instead of Nested Loop + Seq Scan

