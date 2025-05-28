{{
  config(
    materialized = 'table',
    )
}}
select
    ticket_no,
    flight_id,
    fare_conditions,
    amount
from
    {{ ref('stg_flights_facts__ticket_flights') }}