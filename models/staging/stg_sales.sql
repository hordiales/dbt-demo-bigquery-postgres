SELECT
  --order_id, -- podria agregar un CAST
  order_id, -- válido en postgres
  --country, -- podría agregar un rename o COALESCE para imputar nulos, (ojo si cambio el nombre lo utiliza el datamart, puede romper)
  amount,
  
  --CAST(order_id AS INT64) AS order_id, -- CAST explícito para BigQuery
  COALESCE(country, 'Desconocido') AS country_name -- imputar nulos y renombrar (ojo si cambio el nombre lo utiliza el datamart, puede romper)
  --CAST(amount AS FLOAT64) AS amount -- CAST explícito para BigQuery
FROM {{ ref('raw_sales') }}

