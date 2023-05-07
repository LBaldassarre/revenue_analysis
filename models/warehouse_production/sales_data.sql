{{ config(materialized='table') }}

with source_sales_data as (
    select * from {{ source('warehouse_stage', 'sales_data') }}
),

final as (
    select 
        date(orderdate) as order_date,
        date(shippingdate) as shipping_date,
        productid as product_id,
        zip,
        units,
        revenue,
        currency
    from source_sales_data 
)

select * from final