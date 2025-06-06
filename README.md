# DBT

DBT instalado
	pip install dbt-core


Adaptadores

	pip install dbt-bigquery # o el adaptador que se uses

	pip install dbt-postgres



# Inicializar proyecto

	dbt init


# Ejecutar

	dbt debug               # verifica configuraciones
	dbt seed                # sube raw_sales a DB (ingestar tabla desde csv)
	dbt run                 # ejecuta los modelos
	dbt build               # (opcional, incluye tests, por ejemplo para calidad)


WARNING: BigQuery target por defecto
sino
	dbt build --target postgres


# BD config
## Postgress
https://github.com/hordiales/postgress_docker

set up credentianls in profile

create database dbtdemo

## Crear service-account en GCP

IAM & Admin → Service Accounts → Crear cuenta → Asigná permisos (ej. BigQuery Admin o roles específicos) → Descargar key.json
