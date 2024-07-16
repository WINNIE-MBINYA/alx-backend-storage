-- Lists Glam rock bands ranked by their longevity

SELECT band_name,
       CASE
           WHEN formed IS NULL OR split IS NULL THEN 0
           ELSE TIMESTAMPDIFF(YEAR, formed, IFNULL(split, '2022-01-01')) AS lifespan
       END AS lifespan
FROM metal_bands
WHERE main_style LIKE '%Glam rock%'
ORDER BY lifespan DESC;
