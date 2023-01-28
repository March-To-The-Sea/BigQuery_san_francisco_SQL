WITH dist AS
  (SELECT DISTINCT distributor, Count(distributor) AS occurence_value
  FROM bigquery-public-data.san_francisco.film_locations
  GROUP BY distributor
  ORDER BY occurence_value DESC)

SELECT *
FROM dist