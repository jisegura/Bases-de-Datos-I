SELECT v.nombre, v.apellido, v.e_mail, v.telefono
FROM unc_esq_voluntario.tarea t INNER JOIN unc_esq_voluntario.historico h
  ON t.id_tarea = h.id_tarea INNER JOIN unc_esq_voluntario.voluntario v
  ON v.nro_voluntario = h.nro_voluntario
WHERE (t.max_horas - t.min_horas) >= 5000
  AND h.fecha_fin <= '1998-07-24'::date;