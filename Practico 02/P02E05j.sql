SELECT codigo_pelicula
FROM unc_esq_peliculas.renglon_entrega
GROUP BY codigo_pelicula
HAVING COUNT(nro_entrega) BETWEEN 3 AND 5;