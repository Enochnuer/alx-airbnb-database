-- A query to find all properties where the average rating is greater than 4.0 using a subquery.

SELECT * 
FROM Properties
WHERE property_id IN (
    SELECT property_id
    FROM Review
    GROUP BY property_id
    HAVING AVG(rating) > 4.0
);


-- A correlated subquery to find users who have made more than 3 bookings.

SELECT User.first_name
FROM User
WHERE (
    SELECT COUNT(*)
    FROM booking
    WHERE Booking.user_id = User.user_id
) > 3;