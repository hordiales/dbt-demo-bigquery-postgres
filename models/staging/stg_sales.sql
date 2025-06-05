SELECT
  order_id,
  country,
  amount
FROM {{ ref('raw_sales') }}

