{{ config(
    materialized='view'
) }}

SELECT
    table_schema                        AS dataset_name,
    COUNT(*)                            AS total_objects,
    COUNTIF(table_type = 'BASE TABLE')  AS table_count,
    COUNTIF(table_type = 'VIEW')        AS view_count
FROM {{ ref('stg_bq_tables') }}
GROUP BY 1
ORDER BY 1
-- v2
