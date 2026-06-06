{{ config(
    materialized='table'
) }}

SELECT
    table_catalog,
    table_schema,
    table_name,
    table_type,
    creation_time,
    is_insertable_into
FROM `{{ target.database }}`.`region-{{ target.location | lower }}`.INFORMATION_SCHEMA.TABLES
