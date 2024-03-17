select
   to_date(lpep_pickup_datetime) as pickup_datetime,
   to_date(lpep_dropoff_datetime) as dropoff_datetime,
   * exclude(lpep_pickup_datetime,lpep_dropoff_datetime)
from {{ source('raw','GREEN_DATA_RAW') }}
where
    passenger_count > 0
    and trip_distance > 0