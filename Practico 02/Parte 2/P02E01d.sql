SELECT DISTINCT p.nombre_pais
FROM unc_esq_voluntario.pais p
INNER JOIN (
	SELECT d.id_pais
	FROM unc_esq_voluntario.direccion d
	INNER JOIN (
		SELECT i.id_direccion
		FROM unc_esq_voluntario.institucion i
		LEFT JOIN unc_esq_voluntario.historico h
			   ON i.id_institucion = h.id_institucion
		WHERE h.id_institucion IS NULL) i
	        ON i.id_direccion = d.id_direccion) d
	    ON p.id_pais = d.id_pais
ORDER BY p.nombre_pais;