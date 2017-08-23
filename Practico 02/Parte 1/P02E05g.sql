SELECT id_departamento, COUNT(*) AS "cantidad de empleados"
FROM unc_esq_peliculas.empleado
GROUP BY id_departamento;