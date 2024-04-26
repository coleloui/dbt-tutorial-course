WITH source AS (
        SELECT *
        
        FROM {{ source('thelook_ecommerce', 'orders') }}
)

SELECT
        -- IDs
        order_id,
        user_id,

        -- Timestamps
        created_at,
        returned_at,
        shipped_at,
        delivered_at,

        --Other
        status,
        num_of_item AS num_items_ordered

        {# 
                -- Unused Columns
                -gener
         #}
         
FROM source
