-- over_nine_miles: All columns with taxi trip with distance over 9 miles

{{ config(materialized='table') }}

select *
from {{ ref('data_meth.dbt_osobakin.raw_taxi_trips') }}
where distance > 9
