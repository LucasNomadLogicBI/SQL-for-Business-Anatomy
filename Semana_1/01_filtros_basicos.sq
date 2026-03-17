/* PROYECTO: Nomad Logic BI - Business Anatomy
MÓDULO: SQL Básico (Mode Analytics)
CASO: Filtrado de precisión en datasets históricos.

DIAGNÓSTICO: 
Se requiere identificar la presencia de un actor específico ("Ludacris") 
dentro del Top 10 de Billboard. 

TÉCNICA APLICADA:
- Uso de ILIKE para evitar errores por sensibilidad a mayúsculas/minúsculas.
- Uso de Wildcards (%) para capturar al artista en colaboraciones con otros grupos.
- Filtro restrictivo de rango (year_rank <= 10).
*/

SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year_rank <= 10
  AND "group_name" ILIKE '%Ludacris%' 

---------------------------------------------
AVANCES DÍA 2: Operadores NOT, IN y ORDER BY
---------------------------------------------

/* PROYECTO: Nomad Logic BI - Business Anatomy
MÓDULO: SQL Básico (Filtros y Ordenamiento)
FECHA: Martes, 17 de Marzo de 2026

DIAGNÓSTICO DEL DÍA:
Dominio de operadores lógicos de exclusión (NOT), pertenencia (IN) y 
rangos (BETWEEN). Implementación de jerarquías de ordenamiento (ORDER BY) 
para análisis de prioridades.
*/

-- 1. Caso 'California': Filtro de texto insensible y rangos de décadas.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE song_name ILIKE '%California%'
  AND (year BETWEEN 1970 AND 1979 OR year BETWEEN 1990 AND 1999);

-- 2. Caso 'Dr. Dre': Uso de operadores lógicos y paréntesis para evitar sesgos.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE "group_name" ILIKE '%dr. dre%'
  AND (year <= 2000 OR year >= 2010);

-- 3. Caso 'Inexistencia': Identificación de huecos de información (Higiene de Datos).
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year = 2013 
  AND song_name NOT ILIKE '%a%';

-- 4. Caso 'Listas y Jerarquías': Uso de IN para eficiencia y ORDER BY para prioridad.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year IN (2013, 2003, 1993)
  AND year_rank BETWEEN 10 AND 20
ORDER BY year DESC, year_rank ASC;



