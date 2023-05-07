{{ config(materialized='table') }}

with an_sales_data as (

    select * from {{ source('warehouse_production', 'sales_data') }}

),

final as (

    select 
        order_date,
        shipping_date,
        product_id,
        zip,
        units,
        revenue,
        currency
    from an_sales_data

)

select * from final