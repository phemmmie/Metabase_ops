-- link: Update the materialization to ensure the best strategy is selected
{{ config(materialized='view') }}

select *
from {{ ref('raw_crypto_data') }}
where currency = 'LINK'