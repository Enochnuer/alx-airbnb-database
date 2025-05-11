

INSERT INTO "USER" (user_id, first_name, last_name, email, password_hash, phone_number, created_at) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'John', 'Doe', 'john.doe@example.com', '$2a$10$XJrBxEh2WHh1q.nsYFulLOKRDJd.PDUK9oB3lh4NWP1ueQjqK/RKW', '555-123-4567', '2024-01-01 12:00:00'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Jane', 'Smith', 'jane.smith@example.com', '$2a$10$d4gYS8KVObQz.H1jHf2wBO.QjHGE6h.xIWyBpHlNtJkTQw9S8n0h2', '555-234-5678', '2024-01-02 10:30:00'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Michael', 'Brown', 'michael.brown@example.com', '$2a$10$nR0QgWH9.8Qn.aK3hHD8A.wYtT4sJeO8EPaFDxWyQdP7.I3XcHjWu', '555-345-6789', '2024-01-03 14:20:00'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Emily', 'Johnson', 'emily.johnson@example.com', '$2a$10$ZfgLzOmDDeVRfrm3lsGPcextNGF9a.MuRQNM7NvJ8j0Yyyk4bH3sS', '555-456-7890', '2024-01-04 09:15:00'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'David', 'Wilson', 'david.wilson@example.com', '$2a$10$p8hMNJAE.Zx5XbJxwJfkIuq8NeASEPSQYYG9xrKlNP/YJq.OA7MXS', '555-567-8901', '2024-01-05 16:45:00'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'Sarah', 'Martinez', 'sarah.martinez@example.com', '$2a$10$vJfYqR.UUP0RQpDUlSiA6O6XBlTQg81xUrgZdJZ8y1FvYbBL/2jCu', '555-678-9012', '2024-01-06 11:10:00'),
('a1eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'James', 'Anderson', 'james.anderson@example.com', '$2a$10$yMq.mHLVEBjDS/Wb6YApDOlJmLfpUkGfGP5oN6F9JbJ8.jn1vK4ze', '555-789-0123', '2024-01-07 13:30:00'),
('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'Jessica', 'Taylor', 'jessica.taylor@example.com', '$2a$10$z2f8HNF7aYSefT5ztMDYSOQe7BZbhfnRMcDvD0RGJ9FXyiXJgpUXO', '555-890-1234', '2024-01-08 10:00:00');

-- Insert user roles
INSERT INTO USER_ROLE (user_id, role) VALUES
('a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'host'),
('b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'guest'),
('c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'host'),
('d0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'guest'),
('e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'host'),
('f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 'guest'),
('a1eebc99-9c0b-4ef8-bb6d-6bb9bd380a17', 'admin'),
('b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', 'guest');

-- Insert locations
INSERT INTO LOCATION (location_id, street_address, city, state, country, postal_code) VALUES
('c1eebc99-9c0b-4ef8-bb6d-6bb9bd380a19', '123 Beach Road', 'Miami', 'Florida', 'USA', '33139'),
('d1eebc99-9c0b-4ef8-bb6d-6bb9bd380a20', '456 Mountain View Drive', 'Aspen', 'Colorado', 'USA', '81611'),
('e1eebc99-9c0b-4ef8-bb6d-6bb9bd380a21', '789 Central Park West', 'New York', 'New York', 'USA', '10023'),
('f1eebc99-9c0b-4ef8-bb6d-6bb9bd380a22', '321 Lake Shore Drive', 'Chicago', 'Illinois', 'USA', '60611'),
('a2eebc99-9c0b-4ef8-bb6d-6bb9bd380a23', '654 Vine Street', 'Los Angeles', 'California', 'USA', '90028'),
('b2eebc99-9c0b-4ef8-bb6d-6bb9bd380a24', '987 Oceanfront Avenue', 'San Diego', 'California', 'USA', '92109');

-- Insert properties
INSERT INTO PROPERTY (property_id, host_id, name, description, created_at, updated_at) VALUES
('c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Beachfront Paradise', 'Beautiful beachfront property with stunning ocean views.', '2024-01-10 08:00:00', '2024-01-10 08:00:00'),
('d2eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Downtown Loft', 'Modern loft in the heart of downtown with city views.', '2024-01-11 09:30:00', '2024-01-11 09:30:00'),
('e2eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Mountain Retreat', 'Cozy cabin in the mountains perfect for skiing and hiking.', '2024-01-12 14:15:00', '2024-01-12 14:15:00'),
('f2eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Lakeside Cottage', 'Charming cottage by the lake with private dock.', '2024-01-13 11:45:00', '2024-01-13 11:45:00'),
('a3eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 'e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'Luxury Penthouse', 'High-end penthouse with panoramic city views and rooftop pool.', '2024-01-14 16:20:00', '2024-01-14 16:20:00'),
('b3eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 'e0eebc99-9c0b-4ef8-bb6d-6bb9bd380a15', 'Vineyard Villa', 'Elegant villa surrounded by vineyards with wine tasting room.', '2024-01-15 13:00:00', '2024-01-15 13:00:00');

-- Insert property details
INSERT INTO PROPERTY_DETAILS (property_id, price_per_night) VALUES
('c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 350.00),
('d2eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 250.00),
('e2eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 400.00),
('f2eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 200.00),
('a3eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 500.00),
('b3eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 450.00);

-- Insert property locations
INSERT INTO PROPERTY_LOCATION (property_id, location_id) VALUES
('c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'c1eebc99-9c0b-4ef8-bb6d-6bb9bd380a19'),
('d2eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'e1eebc99-9c0b-4ef8-bb6d-6bb9bd380a21'),
('e2eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'd1eebc99-9c0b-4ef8-bb6d-6bb9bd380a20'),
('f2eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 'f1eebc99-9c0b-4ef8-bb6d-6bb9bd380a22'),
('a3eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 'a2eebc99-9c0b-4ef8-bb6d-6bb9bd380a23'),
('b3eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 'b2eebc99-9c0b-4ef8-bb6d-6bb9bd380a24');

-- Insert bookings
INSERT INTO BOOKING (booking_id, property_id, user_id, start_date, end_date, created_at) VALUES
('c3eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', '2024-02-01', '2024-02-05', '2024-01-20 10:00:00'),
('d3eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 'd2eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '2024-02-10', '2024-02-15', '2024-01-21 11:30:00'),
('e3eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 'e2eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', '2024-02-20', '2024-02-25', '2024-01-22 09:15:00'),
('f3eebc99-9c0b-4ef8-bb6d-6bb9bd380a34', 'f2eebc99-9c0b-4ef8-bb6d-6bb9bd380a28', 'b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', '2024-03-01', '2024-03-07', '2024-01-23 14:00:00'),
('a4eebc99-9c0b-4ef8-bb6d-6bb9bd380a35', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', '2024-03-10', '2024-03-15', '2024-01-24 16:45:00'),
('b4eebc99-9c0b-4ef8-bb6d-6bb9bd380a36', 'a3eebc99-9c0b-4ef8-bb6d-6bb9bd380a29', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', '2024-03-20', '2024-03-25', '2024-01-25 13:30:00'),
('c4eebc99-9c0b-4ef8-bb6d-6bb9bd380a37', 'b3eebc99-9c0b-4ef8-bb6d-6bb9bd380a30', 'f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', '2024-04-01', '2024-04-07', '2024-01-26 10:45:00');

-- Insert booking statuses
INSERT INTO BOOKING_STATUS (booking_id, status) VALUES
('c3eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 'confirmed'),
('d3eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 'confirmed'),
('e3eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 'confirmed'),
('f3eebc99-9c0b-4ef8-bb6d-6bb9bd380a34', 'pending'),
('a4eebc99-9c0b-4ef8-bb6d-6bb9bd380a35', 'confirmed'),
('b4eebc99-9c0b-4ef8-bb6d-6bb9bd380a36', 'canceled'),
('c4eebc99-9c0b-4ef8-bb6d-6bb9bd380a37', 'pending');

-- Insert payments
INSERT INTO PAYMENT (payment_id, booking_id, amount, payment_date) VALUES
('d4eebc99-9c0b-4ef8-bb6d-6bb9bd380a38', 'c3eebc99-9c0b-4ef8-bb6d-6bb9bd380a31', 1400.00, '2024-01-20 10:15:00'),
('e4eebc99-9c0b-4ef8-bb6d-6bb9bd380a39', 'd3eebc99-9c0b-4ef8-bb6d-6bb9bd380a32', 1250.00, '2024-01-21 11:45:00'),
('f4eebc99-9c0b-4ef8-bb6d-6bb9bd380a40', 'e3eebc99-9c0b-4ef8-bb6d-6bb9bd380a33', 2000.00, '2024-01-22 09:30:00'),
('a5eebc99-9c0b-4ef8-bb6d-6bb9bd380a41', 'a4eebc99-9c0b-4ef8-bb6d-6bb9bd380a35', 1750.00, '2024-01-24 17:00:00');

-- Insert payment methods
INSERT INTO PAYMENT_METHOD (payment_id, payment_method) VALUES
('d4eebc99-9c0b-4ef8-bb6d-6bb9bd380a38', 'credit_card'),
('e4eebc99-9c0b-4ef8-bb6d-6bb9bd380a39', 'paypal'),
('f4eebc99-9c0b-4ef8-bb6d-6bb9bd380a40', 'stripe'),
('a5eebc99-9c0b-4ef8-bb6d-6bb9bd380a41', 'credit_card');

-- Insert reviews
INSERT INTO REVIEW (review_id, property_id, user_id, rating, comment, created_at) VALUES
('b5eebc99-9c0b-4ef8-bb6d-6bb9bd380a42', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 5, 'Amazing beachfront property! The views were spectacular and the house was immaculate.', '2024-02-06 09:00:00'),
('c5eebc99-9c0b-4ef8-bb6d-6bb9bd380a43', 'd2eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 4, 'Great downtown location. The loft was stylish and comfortable. Would stay again!', '2024-02-16 14:30:00'),
('d5eebc99-9c0b-4ef8-bb6d-6bb9bd380a44', 'e2eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', 5, 'Perfect mountain getaway! The cabin was cozy and the hiking trails were fantastic.', '2024-02-26 11:15:00'),
('e5eebc99-9c0b-4ef8-bb6d-6bb9bd380a45', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 3, 'The beach was beautiful but the house was smaller than expected. Still had a good time overall.', '2024-03-16 10:00:00');

-- Insert messages
INSERT INTO MESSAGE (message_id, sender_id, recipient_id, message_body, sent_at) VALUES
('f5eebc99-9c0b-4ef8-bb6d-6bb9bd380a46', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Hello! I have a question about your Beachfront Paradise property.', '2024-01-19 15:30:00'),
('a6eebc99-9c0b-4ef8-bb6d-6bb9bd380a47', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'Hi there! What would you like to know about the property?', '2024-01-19 15:45:00'),
('b6eebc99-9c0b-4ef8-bb6d-6bb9bd380a48', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Is the property directly on the beach or is there a walk to get to the beach?', '2024-01-19 16:00:00'),
('c6eebc99-9c0b-4ef8-bb6d-6bb9bd380a49', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'It\'s directly on the beach! You can walk out the back door and you\'re on the sand.', '2024-01-19 16:15:00'),
('d6eebc99-9c0b-4ef8-bb6d-6bb9bd380a50', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', 'a0eebc99-9c0b-4ef8-bb6d-6bb9bd380a11', 'Perfect! I\'ll book it right away. Thanks!', '2024-01-19 16:30:00'),
('e6eebc99-9c0b-4ef8-bb6d-6bb9bd380a51', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'Hi! I\'m interested in your Mountain Retreat for a ski trip.', '2024-01-21 10:00:00'),
('f6eebc99-9c0b-4ef8-bb6d-6bb9bd380a52', 'c0eebc99-9c0b-4ef8-bb6d-6bb9bd380a13', 'd0eebc99-9c0b-4ef8-bb6d-6bb9bd380a14', 'Great! It\'s perfect for skiing. The slopes are just a 5-minute drive away.', '2024-01-21 10:30:00');

-- Add a few more recent bookings for reporting purposes
INSERT INTO BOOKING (booking_id, property_id, user_id, start_date, end_date, created_at) VALUES
('a7eebc99-9c0b-4ef8-bb6d-6bb9bd380a53', 'c2eebc99-9c0b-4ef8-bb6d-6bb9bd380a25', 'b1eebc99-9c0b-4ef8-bb6d-6bb9bd380a18', '2024-05-01', '2024-05-07', '2024-04-01 10:00:00'),
('b7eebc99-9c0b-4ef8-bb6d-6bb9bd380a54', 'd2eebc99-9c0b-4ef8-bb6d-6bb9bd380a26', 'f0eebc99-9c0b-4ef8-bb6d-6bb9bd380a16', '2024-05-10', '2024-05-15', '2024-04-02 11:30:00'),
('c7eebc99-9c0b-4ef8-bb6d-6bb9bd380a55', 'e2eebc99-9c0b-4ef8-bb6d-6bb9bd380a27', 'b0eebc99-9c0b-4ef8-bb6d-6bb9bd380a12', '2024-05-20', '2024-05-27', '2024-04-03 09:15:00');

INSERT INTO BOOKING_STATUS (booking_id, status) VALUES
('a7eebc99-9c0b-4ef8-bb6d-6bb9bd380a53', 'confirmed'),
('b7eebc99-9c0b-4ef8-bb6d-6bb9bd380a54', 'confirmed'),
('c7eebc99-9c0b-4ef8-bb6d-6bb9bd380a55', 'confirmed');

INSERT INTO PAYMENT (payment_id, booking_id, amount, payment_date) VALUES
('c7eebc99-9c0b-4ef8-bb6d-6bb9bd380a56', 'a7eebc99-9c0b-4ef8-bb6d-6bb9bd380a53', 2100.00, '2024-04-01 10:15:00'),
('d7eebc99-9c0b-4ef8-bb6d-6bb9bd380a57', 'b7eebc99-9c0b-4ef8-bb6d-6bb9bd380a54', 1250.00, '2024-04-02 11:45:00'),
('e7eebc99-9c0b-4ef8-bb6d-6bb9bd380a58', 'c7eebc99-9c0b-4ef8-bb6d-6bb9bd380a55', 2800.00, '2024-04-03 09:30:00');

INSERT INTO PAYMENT_METHOD (payment_id, payment_method) VALUES
('c7eebc99-9c0b-4ef8-bb6d-6bb9bd380a56', 'credit_card'),
('d7eebc99-9c0b-4ef8-bb6d-6bb9bd380a57', 'stripe'),
('e7eebc99-9c0b-4ef8-bb6d-6bb9bd380a58', 'paypal');
