SELECT id_institucion, COUNT(*) AS "Total de Voluntarios"
FROM unc_esq_voluntario.voluntario
GROUP BY id_institucion
HAVING COUNT(nro_voluntario) > 10;