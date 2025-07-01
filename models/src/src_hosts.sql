WITH all_hosts AS (
    SELECT
        *
    FROM
       AIRBNB_P.RAW.RAW_HOSTS
)
SELECT
    id AS host_id,
    NAME AS host_name,
    is_superhost,
    created_at,
    updated_at
FROM
    all_hosts
