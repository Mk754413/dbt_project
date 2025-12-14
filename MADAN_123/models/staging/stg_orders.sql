SELECT
    order_id,
    customer_id,
    order_amount
FROM {{ source('sales', 'orders') }}
