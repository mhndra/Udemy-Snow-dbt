WITH cte AS (
    SELECT
        t.*,
        dw.*
    FROM {{ ref('fct_trip') }} t
    LEFT JOIN {{ ref('daily_weather') }} dw
        ON t.trip_date = dw.daily_weather
    ORDER BY t.trip_date
)

SELECT *
FROM cte