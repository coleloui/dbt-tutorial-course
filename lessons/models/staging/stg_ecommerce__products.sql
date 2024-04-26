WITH source AS (
    SELECT
        *
    FROM
        {{ source(
            'thelook_ecommerce',
            'products'
        ) }}
)
SELECT
    -- ID
    id AS product_id,
    
    -- Other
    brand,
    cost,
    department,
    retail_price,
    
    {#  -- Unused
    NAME,
    category,
    sku,
    distribution_center_id
     #}

FROM source
