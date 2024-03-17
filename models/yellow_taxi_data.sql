select
   to_date(tpep_pickup_datetime) as pickup_datetime,
   to_date(tpep_dropoff_datetime) as dropoff_datetime,
   * exclude(tpep_pickup_datetime,tpep_dropoff_datetime)
from {{ source('raw','YELLOW_DATA_RAW') }}
where
    passenger_count > 0
    and trip_distance > 0