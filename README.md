DBT instalado
	pip install dbt-core


Adaptadores
	pip install dbt-bigquery # o el adaptador que se uses

	pip install dbt-postgres



Crear service-account
En GCP: IAM & Admin → Service Accounts → Crear cuenta → Asigná permisos (ej. BigQuery Admin o roles específicos) → Descargar key.json


Chequear configuraciones:
* dbt debug


Ejecutar:
* dbt run


dbt debug               # verifica conexión
dbt seed                # sube raw_sales a BigQuery
dbt run                 # ejecuta los modelos
dbt build               # (opcional, incluye tests, por ejemplo para calidad)

