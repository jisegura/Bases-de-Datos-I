SELECT MIN(horas_aportadas), MAX(horas_aportadas), AVG(horas_aportadas)
FROM unc_esq_voluntario.voluntario
WHERE fecha_nacimiento > now() - interval '25 year';