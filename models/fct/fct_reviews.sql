{{
    config(
        materialized="incremental",
        on_schema_change="fail",
        unique_key=["listing_id", "review_date"],
    )
}}

with
    src_reviews as (
        select
            *,
            {{
                dbt_utils.generate_surrogate_key(
                    ["LISTING_ID", "REVIEW_DATE", "REVIEWER_NAME"]
                )
            }} surrogate_key
        from {{ ref("src_reviews") }}
    )
select *
from src_reviews
where
    review_text is not null

    {% if is_incremental() %}
        and review_date > (select max(review_date) from {{ this }})
    {% endif %}
