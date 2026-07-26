-- =========================================
-- Rental Market Analysis Queries
-- =========================================



-- 1. Premium Location Yield Rankings
-- Business Question:
-- Which locations generate higher rental value?


SELECT 
    Location,
    ROUND(AVG(CAST(Rent AS FLOAT)),2) AS Average_Rent

FROM rental_data

GROUP BY Location

ORDER BY Average_Rent DESC;



-- =========================================



-- 2. Spatial Price Efficiency Mapping
-- Business Question:
-- Which locations have better rental efficiency?


SELECT

    Location,

    ROUND(
    AVG(CAST(Rent_per_sqft AS FLOAT)),2
    ) AS Average_Rent_Per_Sqft


FROM rental_data

GROUP BY Location

ORDER BY Average_Rent_Per_Sqft DESC;



-- =========================================



-- 3. Listing Velocity Analysis
-- Business Question:
-- Which locations have faster property movement?


SELECT

    Location,

    ROUND(
    AVG(CAST(Age_of_listing_in_days AS FLOAT)),1
    ) AS Average_Listing_Age


FROM rental_data

GROUP BY Location

ORDER BY Average_Listing_Age ASC;



-- =========================================



-- 4. Furnishing Impact Analysis
-- Business Question:
-- Does furnishing affect rental value?


SELECT

    Furnishing,

    ROUND(
    AVG(CAST(Rent AS FLOAT)),2
    ) AS Average_Rent


FROM rental_data

GROUP BY Furnishing

ORDER BY Average_Rent DESC;
