/* ANÁLISIS DE STARTUPS Y ADQUISICIONES
   Dataset: tutorial.crunchbase_companies & tutorial.crunchbase_acquisitions
*/

-- 1. LISTADO TOTAL DE EMPRESAS Y SUS COMPRAS
-- Usamos LEFT JOIN para no perder las empresas que NO fueron adquiridas.
SELECT companies.name AS nombre_empresa,
       acquisitions.acquired_at AS fecha_adquisicion
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
    ON companies.permalink = acquisitions.company_permalink;


-- 2. REPORTE DE SALUD DE INVERSIONES POR ESTADO
-- Objetivo: Comparar el volumen total de empresas contra las que fueron compradas.
SELECT companies.state_code,
       -- Contamos IDs únicos para asegurar datos reales
       COUNT(DISTINCT companies.permalink) AS total_empresas_unicas,
       COUNT(DISTINCT acquisitions.company_permalink) AS total_empresas_adquiridas
  FROM tutorial.crunchbase_companies companies
  LEFT JOIN tutorial.crunchbase_acquisitions acquisitions
    ON companies.permalink = acquisitions.company_permalink
 -- Limpieza: Solo estados con datos registrados
 WHERE companies.state_code IS NOT NULL
 -- Agrupamos por la primera columna (state_code)
 GROUP BY 1
 -- Ordenamos por volumen de adquisiciones (de mayor a menor)
 ORDER BY 3 DESC;
