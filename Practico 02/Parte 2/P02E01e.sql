SELECT DISTINCT t.nombre_tarea
FROM unc_esq_voluntario.tarea t
LEFT JOIN unc_esq_voluntario.voluntario v
	   ON t.id_tarea = v.id_tarea
WHERE v.id_tarea IS NULL;