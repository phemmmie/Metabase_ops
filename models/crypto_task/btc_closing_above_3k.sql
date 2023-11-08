-- btc_closing_above_3k: Description of the model

{{ config(materialized='table') }}

select *
from {{ ref('raw_crypto_data') }}
where currency = 'BTC'
  and closing_price > 3000