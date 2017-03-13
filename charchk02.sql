SELECT 
    CONCAT(table_schema, '.', table_name),
    column_name,
    character_set_name
FROM
    information_schema.columns
WHERE
    character_set_name IS NOT NULL
        AND character_set_name <> 'utf8mb4'
        AND table_schema NOT IN ('mysql' , 'sys',
        'performance_schema',
        'information_schema');