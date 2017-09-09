SELECT v.nro_voluntario, v.nombre, v.apellido, c.apellido AS "apellido coordinador"
FROM unc_esq_voluntario.voluntario v
LEFT JOIN unc_esq_voluntario.voluntario c
	   ON v.id_coordinador = c.nro_voluntario;