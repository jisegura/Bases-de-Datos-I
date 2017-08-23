-- Opcion 1
SELECT nro_voluntario, COUNT(*) AS "Total de Tareas"
FROM unc_esq_voluntario.historico
GROUP BY nro_voluntario
ORDER BY nro_voluntario;

-- Opcion 2
SELECT nro_voluntario, COUNT(id_tarea) AS "Total de Tareas"
FROM unc_esq_voluntario.historico
GROUP BY nro_voluntario
ORDER BY nro_voluntario;
