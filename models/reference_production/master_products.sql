{{ config(materialized='table') }}

with source_products as (
    select * from {{ source('reference_stage', 'products') }}
),

final as (
    select 
    productid as product_id,
    left(product,charindex('|',product)-1) as product,
    substr(product, charindex('|',product) + 1, length(product)) as subcategory,
    case
        when substr(product, charindex(' ',product) + 1, 1) = 'M' then 'Mix'
        when substr(product, charindex(' ',product) + 1, 1) = 'R' then 'Rural'
        when substr(product, charindex(' ',product) + 1, 1) = 'U' then 'Urban'
        when substr(product, charindex(' ',product) + 1, 1) = 'Y' then 'Youth'
    end as category
    From source_products
)

select * from final