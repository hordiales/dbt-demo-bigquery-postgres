SELECT
  country,
  SUM(amount) AS total_sales
FROM {{ ref('stg_sales') }}
GROUP BY country

