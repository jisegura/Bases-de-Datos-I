SELECT apellido, telefono
FROM unc_esq_voluntario.voluntario
WHERE id_institucion = 20 OR id_institucion = 50
ORDER BY (apellido, nombre);