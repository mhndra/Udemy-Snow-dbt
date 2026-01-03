WITH cte AS (

    SELECT 
        started_at,
        DATE(started_at) AS date_started_at
    FROM {{ source('bikes', 'bike_table') }}
)
SELECT *
FROM cte