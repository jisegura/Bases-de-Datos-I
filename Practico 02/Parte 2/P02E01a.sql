SELECT v.nro_voluntario, v.nombre, v.apellido, COUNT(h.id_tarea)
FROM unc_esq_voluntario.voluntario v INNER JOIN unc_esq_voluntario.historico h
	ON v.nro_voluntario = h.nro_voluntario
GROUP BY v.nro_voluntario;