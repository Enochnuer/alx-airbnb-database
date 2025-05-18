-- Initial query to retrieve all bookings with user, property, and payment details

CREATE INDEX IF NOT EXISTS idx_bookings_user_id ON bookings(user_id);

CREATE INDEX IF NOT EXISTS idx_bookings_property_id ON bookings(property_id);
CREATE INDEX IF NOT EXISTS idx_payments_booking_id ON payments(booking_id);
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