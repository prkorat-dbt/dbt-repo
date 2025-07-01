WITH ALL_reviews AS (
    SELECT
        *
    FROM
        AIRBNB_P.RAW.RAW_REVIEWS
)
SELECT
    listing_id,
    date AS review_date,
    reviewer_name,
    comments AS review_text,
    sentiment AS review_sentiment
FROM
    ALL_reviews
