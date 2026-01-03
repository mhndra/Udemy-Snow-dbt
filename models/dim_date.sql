WITH cte AS (
    SELECT 
        started_at,
        DATE(started_at) AS date_started_at,
        HOUR(started_at) AS hour_started_at,
        {{ day_type('started_at') }} AS day_type,
        {{ get_season('started_at') }} AS station_of_year,
        {{ function1('started_at') }} AS try_macro
    FROM {{ source('bikes', 'bike_table') }}
)
SELECT *
FROM cte