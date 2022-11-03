SELECT
    r.category_name,
    p.article,
    COUNT (article)
FROM 
    publications as p
LEFT OUTER JOIN
    rubricator AS r
ON r.code = p.rubricator_code
GROUP BY r.category_name, p.article
ORDER BY r.category_name;