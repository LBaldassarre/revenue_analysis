{{ config(materialized='table') }}

with an_periods as (

    select * from {{ source('warehouse_production', 'periods') }}

),

final as (

    select 
        period_id,
        year,
        quarter,
        month,
        day
    from an_periods

)

select * from final