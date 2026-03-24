# Semana 02: SQL Intermedio - Joins y Anatomía del Negocio

En esta segunda etapa del repositorio, profundizamos en la relación entre tablas y cómo extraer métricas precisas cuando los datos están repartidos en diferentes "cajones" (datasets).

### Conceptos Clave Aprendidos:

1. **LEFT JOIN (El Puente Inclusivo)**:
   - A diferencia del `INNER JOIN`, el `LEFT JOIN` no elimina filas de la tabla principal si no encuentra una coincidencia en la segunda tabla.
   - Es vital para análisis de negocios donde queremos ver el universo total de entidades (ej: todas las empresas o todos los pacientes) y solo "pegarle" la información adicional cuando existe (ej: adquisiciones o cirugías previas).



2. **COUNT DISTINCT (El Filtro de Identidad)**:
   - Permite contar registros únicos evitando duplicados. 
   - Fundamental para métricas de "alcance" (¿Cuántos pacientes únicos atendí?) vs. "volumen" (¿Cuántas sesiones totales hice?).



3. **Filtrado de Nulos (`IS NOT NULL`)**:
