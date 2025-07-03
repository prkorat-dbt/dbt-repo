WITH ALL_cutomer AS (
    SELECT
        *
    FROM
        AIRBNB_P.RAW.CUSTOMER
)
SELECT
    id,
    c_name,
    created_on,
    updated_on,
    l_name
FROM
    ALL_cutomer
