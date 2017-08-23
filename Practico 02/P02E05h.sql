SELECT id_coordinador, COUNT(*) AS "Total de Voluntarios"
FROM unc_esq_voluntario.voluntario
GROUP BY id_coordinador
HAVING COUNT(nro_voluntario) > 8;