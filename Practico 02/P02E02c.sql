SELECT apellido ||','|| nombre AS "Apellido y Nombre", e_mail AS "Dirección de mail"
FROM unc_esq_voluntario.voluntario
WHERE telefono LIKE '+011%';