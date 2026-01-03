WITH trip AS (
    SELECT
        ride_id,
        -- rideable_type,
        DATE(started_at) AS trip_date,
        start_station_id,
        end_station_id,
        member_casual,
        TIMESTAMPDIFF(SECOND, ended_at, started_at) AS trip_duration_second
    FROM {{ source('bikes', 'bike_table') }}
)

SELECT *
FROM trip