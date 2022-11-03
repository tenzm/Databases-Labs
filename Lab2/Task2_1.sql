CREATE TEMP VIEW filtered_rubricator AS
    SELECT 
        *
    FROM 
        rubricator
    WHERE 
        category_name IN ('Базы данных', 'СУБД');

SELECT 
    p.author,
    p.article,
    fr.category_name
FROM 
    filtered_rubricator AS fr
    INNER JOIN publications AS p ON p.rubricator_code = fr.code
ORDER BY (p.author, p.article)