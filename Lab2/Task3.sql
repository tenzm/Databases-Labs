SELECT 
    r.category_name
FROM 
    rubricator AS r 
    LEFT OUTER JOIN 
        publications AS p
    ON r.code = p.rubricator_code
WHERE 
    p.rubricator_code IS NULL
ORDER BY 
    r.category_name