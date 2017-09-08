SELECT i.id_institucion
FROM unc_esq_voluntario.institucion i LEFT JOIN (SELECT *
												 FROM unc_esq_voluntario.voluntario v INNER JOIN unc_esq_voluntario.tarea t
												   ON v.id_tarea = t.id_tarea
												 WHERE v.horas_aportadas >= t.max_horas) v
ON i.id_institucion = v.id_institucion
WHERE v.id_institucion IS NULL;