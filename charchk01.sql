SELECT 
    CONCAT(table_schema, '.', table_name),
    column_name,
    character_set_name
FROM
    information_schema.columns
WHERE
    data_type IN ('varchar' , 'longtext', 'text', 'char')
        AND character_set_name <> 'utf8mb4'
        AND table_schema NOT IN ('mysql' , 'sys',
        'performance_schema',
        'information_schema');
