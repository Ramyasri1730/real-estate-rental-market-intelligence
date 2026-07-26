-- =========================================
-- Investment Opportunity Analysis
-- =========================================



-- 1. Premium Pricing Outlier Detection
-- Identify properties with above-average rent efficiency


SELECT

    Address,

    Location,

    Rent,

    Rent_per_sqft


FROM rental_data


WHERE Rent_per_sqft >

(
    SELECT 
    AVG(CAST(Rent_per_sqft AS FLOAT))

    FROM rental_data
)


ORDER BY Rent_per_sqft DESC;



-- =========================================



-- 2. Underpriced High Velocity Properties
-- Identify potential investment opportunities


WITH Market_Baseline AS

(

SELECT

AVG(CAST(Rent_per_sqft AS FLOAT))
AS Average_Price,

AVG(CAST(Age_of_listing_in_days AS FLOAT))
AS Average_Listing_Age


FROM rental_data

)



SELECT TOP 5


Address,

Location,

Rent,

Rent_per_sqft,

Age_of_listing_in_days


FROM rental_data


CROSS JOIN Market_Baseline


WHERE 

Rent_per_sqft < Average_Price

AND

Age_of_listing_in_days < Average_Listing_Age


ORDER BY Rent_per_sqft ASC;
