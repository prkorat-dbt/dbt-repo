{{
    config(
        materialized='incremental',
        on_schema_change= 'append_new_columns',
        unique_key = 'id',
        incremental_strategy = 'merge'

    )
}}

with src_cutomer as(
    select * from {{ref('src_cutomer')}}
)
select * from src_cutomer


{% if is_incremental() %}
where updated_on > (select max(updated_on) from {{this}})
{% endif%}