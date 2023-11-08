-- DBT Model that creates the chapter2/taxi_trips table.

select * from {{ ref('data_meth.dbt_osobakin.raw_taxi_trips') }}