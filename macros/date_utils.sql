{% macro function1(x) %}
    CASE 
        WHEN {{ x }} < CURRENT_DATE THEN 'PAST'
        ELSE 'FUTURE'
    END
{% endmacro %}

{% macro get_season(x) %}
    CASE
        WHEN MONTH({{ x }}) IN (12, 1, 2)
            THEN 'WINTER'
        WHEN MONTH({{ x }}) IN (3, 4, 5)
            THEN 'SPRING'
        WHEN MONTH({{ x }}) IN (6, 7, 8)
            THEN 'SUMMER'
        ELSE 'AUTUMN'
    END
{% endmacro %}

{% macro day_type(x) %}
    CASE
        WHEN DAYNAME(started_at) IN ('Sat', 'Sun') 
            THEN 'WEEKEND'
        ELSE 'BUSINESS DAY'
    END
{% endmacro %}