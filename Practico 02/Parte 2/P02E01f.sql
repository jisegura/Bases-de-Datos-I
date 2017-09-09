SELECT p.nombre_pais, d.cantidad_voluntario AS "voluntarios mayores de edad"
FROM unc_esq_voluntario.pais p
INNER JOIN (SELECT d.id_pais, SUM(COALESCE(i.cantidad_voluntario,0)) AS "cantidad_voluntario"
			FROM unc_esq_voluntario.direccion d
			LEFT JOIN (SELECT i.id_institucion, i.id_direccion, COUNT(v.nro_voluntario) AS "cantidad_voluntario"
						FROM unc_esq_voluntario.institucion i
						INNER JOIN unc_esq_voluntario.voluntario v
								ON i.id_institucion = v.id_institucion
						WHERE v.fecha_nacimiento < now() - interval '18 year'
						GROUP BY i.id_institucion, i.id_direccion
						HAVING COUNT(v.nro_voluntario) > 4
						   AND MAX(v.horas_aportadas) - MIN(v.horas_aportadas) < 5000) i
			       ON d.id_direccion = i.id_direccion
			GROUP BY d.id_pais) d
        ON p.id_pais = d.id_pais;