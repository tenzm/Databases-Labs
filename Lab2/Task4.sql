SELECT 
    m.name
FROM (
        SELECT DISTINCT
            r.magazine_id
        FROM
            publications AS p
            INNER JOIN 
                releases as r
            ON r.release_id = p.release_id AND p.author = 'William Smith'
) AS filtered_releases
    LEFT OUTER JOIN magazines AS m
    ON m.magazine_id = filtered_releases.magazine_id
ORDER BY name
