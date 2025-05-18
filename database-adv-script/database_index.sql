-- CREATING INDEX
EXPLAIN ANALYZE SELECT * FROM User WHERE user_id = '1';
CREATE INDEX idx_user_id
ON User (user_id)
EXPLAIN ANALYZE SELECT * FROM User WHERE user_id = '1';


EXPLAIN ANALYZE SELECT * FROM Property WHERE property_id = '1';
CREATE INDEX idx_property_id
ON Property (property_id)
EXPLAIN ANALYZE SELECT * FROM Property WHERE property_id = '1';

EXPLAIN ANALYZE SELECT * FROM Booking WHERE booking_id = '1';
CREATE INDEX idx_booking_id
ON Booking (booking_id)
EXPLAIN ANALYZE SELECT * FROM Booking WHERE booking_id = '1';