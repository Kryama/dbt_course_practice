{{
  config(
    materialized = 'table',
    )
}}
select
    flight_id,
    flight_no,
    scheduled_departure,
    scheduled_arrival,
    departure_airport,
    arrival_airport,
    status,
    aircraft_code,
    actual_departure,
    actual_arrival,
    CURRENT_DATE as load_date
from
    {{ ref('stg_flights_facts__flights') }}