A. ENTITIES

USER {
    uuid user_id PK
    varchar first_name
    varchar last_name
    varchar email
    varchar password_hash
    varchar phone_number
    enum role
    timestamp created_at
}

PROPERTY {
    uuid property_id PK
    uuid host_id FK
    varchar name
    text description
    varchar location
    decimal price_per_night
    timestamp created_at
    timestamp updated_at
}

BOOKING {
    uuid booking_id PK
    uuid property_id FK
    uuid user_id FK
    date start_date
    date end_date
    decimal total_price
    enum status
    timestamp created_at
}

PAYMENT {
    uuid payment_id PK
    uuid booking_id FK
    decimal amount
    timestamp payment_date
    enum payment_method
}

REVIEW {
    uuid review_id PK
    uuid property_id FK
    uuid user_id FK
    integer rating
    text comment
    timestamp created_at
}

MESSAGE {
    uuid message_id PK
    uuid sender_id FK
    uuid recipient_id FK
    text message_body
    timestamp sent_at
}

USER ||--o{ PROPERTY : hosts
USER ||--o{ BOOKING : makes
USER ||--o{ REVIEW : writes
USER ||--o{ MESSAGE : sends
USER ||--o{ MESSAGE : receives
PROPERTY ||--o{ BOOKING : is_booked_in
PROPERTY ||--o{ REVIEW : receives
BOOKING ||--|| PAYMENT : has
B. RELATIONSHIPS 1. User to Property (1) A user in the host role can list multiple properties Each property belongs to exactly one host user

2. User to Booking (1)
A user can make multiple bookings
Each booking is made by one specific user

3. Property to Booking (1)
A property can have multiple bookings
Each booking is for one specific property

4. Booking to Payment (1:1)
Each booking has exactly one payment record
Each payment is associated with exactly one booking

5. User to Review (1)
A user can write multiple reviews
Each review is written by one specific user

6. Property to Review (1)
A property can receive multiple reviews
Each review is for one specific property

7. User to Message (1, bidirectional)
A user can send multiple messages
A user can receive multiple messages
Each message has one sender and one recipient