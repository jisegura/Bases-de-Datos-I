SELECT *
FROM unc_esq_voluntario.institucion
WHERE id_direccion IS NOT NULL
ORDER BY id_direccion ASC
LIMIT 10;