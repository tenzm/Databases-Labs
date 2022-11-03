SELECT 
    p.author,
    r.year,
    m.name
FROM
    publications AS p
LEFT OUTER JOIN
    releases AS r
ON
    p.release_id = r.release_id
INNER JOIN
    magazines AS m
ON
    r.magazine_id = m.magazine_id
WHERE
    r.year BETWEEN 2020 AND 2022
ORDER BY 
    m.name, r.year, p.author