SELECT v.nro_voluntario, v.nombre, v.apellido
FROM unc_esq_voluntario.voluntario v
INNER JOIN (
	SELECT i.id_institucion
	FROM unc_esq_voluntario.institucion i
	INNER JOIN (
		SELECT d.id_direccion
		FROM unc_esq_voluntario.direccion d
		INNER JOIN (
			SELECT p.id_pais
			FROM unc_esq_voluntario.pais p
			INNER JOIN unc_esq_voluntario.continente c
				    ON p.id_continente = c.id_continente
			WHERE c.nombre_continente = 'Europeo') p
			    ON d.id_pais = p.id_pais) d
		    ON i.id_direccion = d.id_direccion) i
	    ON v.id_institucion = i.id_institucion
WHERE v.nro_voluntario IN (
	SELECT id_director
	FROM unc_esq_voluntario.institucion
	WHERE id_director IS NOT NULL);