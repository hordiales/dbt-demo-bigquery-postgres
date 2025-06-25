SELECT
  order_id, -- podria agregar un CAST
  country, -- podría agregar un rename o COALESCE para imputar nulos
  amount
FROM {{ ref('raw_sales') }}

