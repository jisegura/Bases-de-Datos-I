-- Opcion 1
SELECT *
FROM unc_esq_voluntario.voluntario
WHERE fecha_nacimiento <= (SELECT fecha_nacimiento
						  FROM unc_esq_voluntario.voluntario
						  ORDER BY fecha_nacimiento ASC
						  LIMIT 1)
   OR fecha_nacimiento >= (SELECT fecha_nacimiento
						  FROM unc_esq_voluntario.voluntario
						  ORDER BY fecha_nacimiento DESC
						  LIMIT 1);

-- Opcion 2
SELECT *
FROM unc_esq_voluntario.voluntario
WHERE fecha_nacimiento <= (SELECT MIN(fecha_nacimiento)
						  FROM unc_esq_voluntario.voluntario)
   OR fecha_nacimiento >= (SELECT MAX(fecha_nacimiento)
						  FROM unc_esq_voluntario.voluntario);