-- =========================================
-- Rental Market Intelligence Project
-- Database Table Creation
-- =========================================


CREATE TABLE rental_data
(
    Property_ID INT IDENTITY(1,1) PRIMARY KEY,

    Address NVARCHAR(255),

    Rent INT NOT NULL,

    Beds INT NOT NULL,

    Baths INT NOT NULL,

    Type VARCHAR(50),

    Area_in_sqft FLOAT,

    Rent_per_sqft FLOAT,

    Price_Band VARCHAR(20),

    Demand_Flag VARCHAR(50),

    Property_Size_Category VARCHAR(50),

    Furnishing VARCHAR(50),

    Posted_date DATE,

    Age_of_listing_in_days INT,

    Location VARCHAR(100),

    City VARCHAR(50),

    Latitude FLOAT,

    Longitude FLOAT
);
