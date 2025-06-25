SELECT
  country,
  SUM(amount) AS total_sales -- una agregación, podría ser un KPI
FROM {{ ref('stg_sales') }}
GROUP BY country

