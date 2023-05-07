{{ config(materialized='table') }}

with source_periods as (
    select * from {{ source('warehouse_stage', 'periods') }}
),

final as (
    select 
        period_id,
        year,
        quarter,
        month,
        day
    from source_periods
)

select * from final