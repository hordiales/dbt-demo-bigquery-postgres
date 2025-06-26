-- vista gold sobre la capa de stg
SELECT
  country_name,
  SUM(amount) AS total_sales -- una agregación, podría ser un KPI
FROM {{ ref('stg_sales') }}
GROUP BY country_name

