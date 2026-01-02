select *
from {{ source('bikes', 'bike_table') }}
limit 10