{{ config(materialized='table') }}

with an_products as (
    
    select 
        *
    from {{ source('reference_production', 'master_products') }}
    where product_id in (
        select distinct product_id from {{ source('warehouse_production', 'sales_data') }}
    )

),

final as (

    select 
        product_id,
        product,
        subcategory,
        category
    from an_products
)

select * from final