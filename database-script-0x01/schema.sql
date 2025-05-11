-- Enable UUID extension (for PostgreSQL)
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- USER table
CREATE TABLE "USER" (
    user_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    phone_number VARCHAR(20),
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT user_email_unique UNIQUE (email)
);

-- Create index on email for faster lookups
CREATE INDEX idx_user_email ON "USER" (email);

-- USER_ROLE table
CREATE TABLE USER_ROLE (
    user_id UUID PRIMARY KEY,
    role VARCHAR(10) NOT NULL CHECK (role IN ('guest', 'host', 'admin')),
    CONSTRAINT fk_user_role_user
        FOREIGN KEY (user_id)
        REFERENCES "USER" (user_id)
        ON DELETE CASCADE
);

-- LOCATION table
CREATE TABLE LOCATION (
    location_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    street_address VARCHAR(255) NOT NULL,
    city VARCHAR(100) NOT NULL,
    state VARCHAR(100) NOT NULL,
    country VARCHAR(100) NOT NULL,
    postal_code VARCHAR(20) NOT NULL
);

-- Create index on city and country for location-based searches
CREATE INDEX idx_location_city_country ON LOCATION (city, country);

-- PROPERTY table
CREATE TABLE PROPERTY (
    property_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    host_id UUID NOT NULL,
    name VARCHAR(255) NOT NULL,
    description TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_property_host
        FOREIGN KEY (host_id)
        REFERENCES "USER" (user_id)
        ON DELETE CASCADE
);

-- Create index on host_id for quick lookups of properties by host
CREATE INDEX idx_property_host_id ON PROPERTY (host_id);

-- PROPERTY_DETAILS table
CREATE TABLE PROPERTY_DETAILS (
    property_id UUID PRIMARY KEY,
    price_per_night DECIMAL(10, 2) NOT NULL CHECK (price_per_night > 0),
    CONSTRAINT fk_property_details_property
        FOREIGN KEY (property_id)
        REFERENCES PROPERTY (property_id)
        ON DELETE CASCADE
);

-- PROPERTY_LOCATION junction table
CREATE TABLE PROPERTY_LOCATION (
    property_id UUID PRIMARY KEY,
    location_id UUID NOT NULL,
    CONSTRAINT fk_property_location_property
        FOREIGN KEY (property_id)
        REFERENCES PROPERTY (property_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_property_location_location
        FOREIGN KEY (location_id)
        REFERENCES LOCATION (location_id)
        ON DELETE CASCADE
);

-- Create index on location_id for location-based property searches
CREATE INDEX idx_property_location_location_id ON PROPERTY_LOCATION (location_id);

-- BOOKING table
CREATE TABLE BOOKING (
    booking_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_booking_property
        FOREIGN KEY (property_id)
        REFERENCES PROPERTY (property_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_booking_user
        FOREIGN KEY (user_id)
        REFERENCES "USER" (user_id)
        ON DELETE CASCADE,
    CONSTRAINT check_booking_dates
        CHECK (end_date > start_date)
);

-- Create indexes for faster property availability searches
CREATE INDEX idx_booking_property_id ON BOOKING (property_id);
CREATE INDEX idx_booking_user_id ON BOOKING (user_id);
CREATE INDEX idx_booking_dates ON BOOKING (property_id, start_date, end_date);

-- BOOKING_STATUS table
CREATE TABLE BOOKING_STATUS (
    booking_id UUID PRIMARY KEY,
    status VARCHAR(10) NOT NULL CHECK (status IN ('pending', 'confirmed', 'canceled')),
    CONSTRAINT fk_booking_status_booking
        FOREIGN KEY (booking_id)
        REFERENCES BOOKING (booking_id)
        ON DELETE CASCADE
);

-- PAYMENT table
CREATE TABLE PAYMENT (
    payment_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    booking_id UUID NOT NULL UNIQUE,
    amount DECIMAL(10, 2) NOT NULL CHECK (amount > 0),
    payment_date TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_payment_booking
        FOREIGN KEY (booking_id)
        REFERENCES BOOKING (booking_id)
        ON DELETE CASCADE
);

-- Create index on booking_id for payment lookups
CREATE INDEX idx_payment_booking_id ON PAYMENT (booking_id);

-- PAYMENT_METHOD table
CREATE TABLE PAYMENT_METHOD (
    payment_id UUID PRIMARY KEY,
    payment_method VARCHAR(20) NOT NULL CHECK (payment_method IN ('credit_card', 'paypal', 'stripe')),
    CONSTRAINT fk_payment_method_payment
        FOREIGN KEY (payment_id)
        REFERENCES PAYMENT (payment_id)
        ON DELETE CASCADE
);

-- REVIEW table
CREATE TABLE REVIEW (
    review_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    property_id UUID NOT NULL,
    user_id UUID NOT NULL,
    rating INTEGER NOT NULL CHECK (rating >= 1 AND rating <= 5),
    comment TEXT NOT NULL,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_review_property
        FOREIGN KEY (property_id)
        REFERENCES PROPERTY (property_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_review_user
        FOREIGN KEY (user_id)
        REFERENCES "USER" (user_id)
        ON DELETE CASCADE,
    CONSTRAINT unique_user_property_review
        UNIQUE (user_id, property_id)
);

-- Create indexes for review lookups
CREATE INDEX idx_review_property_id ON REVIEW (property_id);
CREATE INDEX idx_review_user_id ON REVIEW (user_id);

-- MESSAGE table
CREATE TABLE MESSAGE (
    message_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    sender_id UUID NOT NULL,
    recipient_id UUID NOT NULL,
    message_body TEXT NOT NULL,
    sent_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_message_sender
        FOREIGN KEY (sender_id)
        REFERENCES "USER" (user_id)
        ON DELETE CASCADE,
    CONSTRAINT fk_message_recipient
        FOREIGN KEY (recipient_id)
        REFERENCES "USER" (user_id)
        ON DELETE CASCADE
);

-- Create indexes for message lookups
CREATE INDEX idx_message_sender_id ON MESSAGE (sender_id);
CREATE INDEX idx_message_recipient_id ON MESSAGE (recipient_id);
CREATE INDEX idx_message_conversation ON MESSAGE (sender_id, recipient_id);

-- Add trigger for automatically updating the updated_at field in PROPERTY table
CREATE OR REPLACE FUNCTION update_modified_column()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = CURRENT_TIMESTAMP;
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER update_property_modtime
BEFORE UPDATE ON PROPERTY
FOR EACH ROW
EXECUTE FUNCTION update_modified_column();