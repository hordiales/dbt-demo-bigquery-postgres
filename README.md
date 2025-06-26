# DBT

DBT instalado
	pip install dbt-core


Adaptadores

	pip install dbt-bigquery # o el adaptador que se uses

	pip install dbt-postgres



# Inicializar proyecto

	dbt init

Esto genera un dbt_project.yml que es un archivo de configuración con esquemas y valores por defecto.
Editarlo y configurarlo. Al menos establecer el "profile" es el perfil de configuraciones a utilizar (con uno o más motores de db)
Leido del archivo de configuración general, normalmente ubicado ~/.dbt/profiles.yml


## Datos de prueba

Capa "raw"
	cat seeds/raw_sales.csv
Un archivo con 3 columnas (order_id, country, amount)



# Ejecutar

Reminders:
	* Por defecto el target es bigquery
	* Para postgres:
		* Crear bd en postgres
		* utilizrar --target postgres en cada comnado
	* stg y mart (se crean como vistas por defecto)

	dbt debug               # verifica configuraciones
	dbt seed                # sube raw_sales a DB (ingestar tabla desde csv) toma el nombre de archivo para el nombre de la tabla
	dbt run                 # ejecuta los modelos
	dbt build               # (opcional, incluye tests, por ejemplo para calidad)

Los tests en principio preparados para postgres bd
	dbt build --target postgres


WARNING: BigQuery target por defecto
sino
	dbt build --target postgres


# Generar documentación extra


	dbt docs generate #crea la documentación y el diagrama de dependencias en formato HTML.
	dbt docs serve # levanta un servidor local donde puedes navegar la documentación y ver el diagrama interactivo de dependencias entre tus modelos, seeds, snapshots, etc.


# BD config
## Postgres

Run postgres locally using a docker: https://github.com/hordiales/postgress_docker

	set -o allexport && source .env && set +o allexport

	docker pull postgres

	docker run -d \
		--name mlops-postgres \
		-e POSTGRES_PASSWORD=$POSTGRES_PASSWORD \
		-e PGDATA=/var/lib/postgresql/data/pgdata \
		-v $postgres_data_folder:/var/lib/postgresql/data \
		-p 5432:5432 \
		postgres

set up credentianls in profile

create database dbtdemo

## Crear service-account en GCP

IAM & Admin → Service Accounts → Crear cuenta → Asigná permisos (ej. BigQuery Admin o roles específicos) → Descargar key.json


## Requisitos

Probado con python version: 3.13.5
dbt-core=1.10.2
