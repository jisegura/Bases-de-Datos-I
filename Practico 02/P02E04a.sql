SELECT apellido, nombre, id_tarea, to_char(fecha_nacimiento, 'YYYY-MM-DD') as "Fecha Nacimiento"
FROM unc_esq_voluntario.voluntario
WHERE EXTRACT(month from fecha_nacimiento) = 5;