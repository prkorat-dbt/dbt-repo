with scd_raw_customer as (
    select *
    from {{ ref("scd_raw_customer")}}
)
select *
from scd_raw_customer
where dbt_valid_to is null
