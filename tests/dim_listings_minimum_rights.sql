-- 1. In tests folder, create dim_listings_minimum_nights.sql

SELECT
    *
FROM
    {{ ref('dim_listings_cleansed') }}
WHERE minimum_nights < 1
LIMIT 10
