SELECT nombre ||','|| apellido as "Nombre y Apellido",
	to_char(fecha_nacimiento, 'YYYY-MM-DD') as "Fecha Nacimiento"
FROM unc_esq_voluntario.voluntario
ORDER BY EXTRACT(month from fecha_nacimiento) ASC, EXTRACT(day from fecha_nacimiento) ASC;