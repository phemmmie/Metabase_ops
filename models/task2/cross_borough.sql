-- cross_borough: All columns with taxi trip start in one borough, but end up in another.

{{ config(materialized='table') }}

select *
from {{ ref('raw_taxi_trips') }}
where pickup_borough != dropoff_borough
