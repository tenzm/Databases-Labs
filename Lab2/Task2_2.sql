SELECT 
    p.author,
    p.article,
    r.category_name
FROM 
    rubricator AS r
    INNER JOIN publications AS p ON p.rubricator_code = r.code
WHERE 
    category_name IN ('Базы данных', 'СУБД')
ORDER BY (p.author, p.article)