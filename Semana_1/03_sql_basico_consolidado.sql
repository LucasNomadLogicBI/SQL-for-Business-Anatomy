/* PROYECTO: SQL for Business Anatomy
NIVEL: Básico (Finalizado)
DESCRIPCIÓN: Consolidado de técnicas de filtrado, lógica y ordenamiento.
*/

-- 1. MUESTREO Y ALIAS (LIMIT & AS)
-- Obtener una vista rápida con nombres de columna profesionales.
SELECT year AS "Año",
       month_name AS "Mes",
       south AS "Región Sur",
       west AS "Región Oeste"
FROM tutorial.us_housing_units
LIMIT 10;

-- 2. OPERADORES DE COMPARACIÓN (Detección de umbrales)
-- Filtrar registros que superan valores críticos.
SELECT *
FROM tutorial.us_housing_units
WHERE south > 20 AND west <= 15;

-- 3. OPERADORES LÓGICOS (AND, OR, NOT)
-- Combinación de condiciones para diagnósticos precisos.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE (year = 2013 OR year = 2003)
  AND "group" NOT ILIKE '%feat%';

-- 4. BÚSQUEDA POR PATRONES (LIKE / ILIKE)
-- Identificación de registros por coincidencias parciales de texto.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE artist_name ILIKE 'Snoop%'; -- Empieza con Snoop, ignora mayúsculas.

-- 5. LISTAS Y RANGOS (IN & BETWEEN)
-- Selección eficiente de periodos y categorías.
SELECT *
FROM tutorial.billboard_top_100_year_end
WHERE year IN (1990, 2000, 2010)
  AND year_rank BETWEEN 1 AND 10;
