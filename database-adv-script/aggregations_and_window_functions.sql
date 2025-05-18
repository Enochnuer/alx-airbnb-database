
-- A query to find the total number of bookings made by each user, using the `COUNT` 
-- function and `GROUP BY` clause.

SELECT COUNT(user_id), Booking
FROM User
GROUP BY Booking

-- A window function (ROW_NUMBER, RANK) to rank properties based on the total number of bookings they have received.

SELECT Property.property_id, Property.property_name,
COUNT(Booking.booking_id) AS total_booking,
ROW_NUMBER() OVER (
    ORDER BY COUNT(Booking.booking_id) DESC
) AS row_number,
RANK() OVER (
    ORDER BY COUNT(Booking.booking_id) DESC
) AS rank_position
FROM Property
LEFT JOIN Booking ON Property.property_id = Booking.property_id
GROUP BY Property.property_id, Property.name
