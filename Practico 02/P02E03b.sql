-- Opcion 1
SELECT *
FROM unc_esq_peliculas.distribuidor
WHERE tipo = 'I' AND telefono IS NULL;

-- Opcion 2
SELECT *
FROM unc_esq_peliculas.distribuidor d, unc_esq_peliculas.internacional i
WHERE d.id_distribuidor = i.id_distribuidor AND telefono IS NULL;