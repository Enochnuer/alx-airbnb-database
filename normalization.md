NORMALIZATION
    1. Separated User Role
    Created a dedicated USER_ROLE table to store the role information
    This removes the enum dependency within the USER table
    Allows for more flexible role management and potential future expansion of role types

    2. Decomposed Property Information
    Extracted price information into a separate PROPERTY_DETAILS table
    Created a comprehensive location model with:

    A dedicated LOCATION table storing address components
    A PROPERTY_LOCATION junction table to associate properties with locations
    This approach allows for more structured location data and prevents redundancy if multiple properties share the same location

    3. Isolated Booking Status
    Created a separate BOOKING_STATUS table for the status enum
    This makes status changes more traceable and allows for easier expansion of status types

    4. Separated Payment Method
    Created a dedicated PAYMENT_METHOD table
    This isolates the payment method information, allowing for better tracking of payment method changes


BENEFITS
    Reduced Data Redundancy
    Location information isn't duplicated across multiple properties
    Enum values are stored once and referenced


    Improved Data Integrity
    Changes to statuses, roles, and other attributes can be managed independently
    Updates to shared data (like locations) only need to happen in one place


    More Flexible Schema
    The normalized design can more easily accommodate future changes
    New attributes can be added to specific entities without affecting other tables


    Better Query Performance
    Smaller, more focused tables can improve query efficiency
    Specialized indexes can be created for specific data relationships


    Enhanced Data Consistency
    Separating concerns reduces the chance of inconsistent data entry
    Each table has a clear, single responsibility
