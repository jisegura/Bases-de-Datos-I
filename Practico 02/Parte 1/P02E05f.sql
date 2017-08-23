SELECT idioma, COUNT(*) AS "cantidad de peliculas"
FROM unc_esq_peliculas.pelicula
GROUP BY idioma;