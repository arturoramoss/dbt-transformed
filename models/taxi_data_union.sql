select 'green' as taxi_type,
    PICKUP_DATETIME,
	DROPOFF_DATETIME,
	VENDORID,
	PASSENGER_COUNT,
	TOTAL_AMOUNT,
	TRIP_DISTANCE,
	TIP_AMOUNT,
	TOLLS_AMOUNT
from {{ ref('green_taxi_data') }}

union all

select 'yellow' as taxi_type,
    PICKUP_DATETIME,
	DROPOFF_DATETIME,
	VENDORID,
	PASSENGER_COUNT,
	TOTAL_AMOUNT,
	TRIP_DISTANCE,
	TIP_AMOUNT,
	TOLLS_AMOUNT
from {{ ref('yellow_taxi_data') }}