/* PROYECTO: Nomad Logic BI - Business Anatomy
MÓDULO: SQL Básico (Procedimientos y Comparación)
FECHA: Miércoles, 18 de Marzo de 2026

DIAGNÓSTICO DEL DÍA:
Implementación de alias estéticos (AS) para reportes, técnicas de 
muestreo de datos (LIMIT) y operadores de comparación para 
detección de umbrales.
*/

-- 1. ALIAS (AS): Presentación prolija de columnas para el cliente.
-- Usamos comillas dobles para respetar mayúsculas y espacios.
SELECT year AS "Year",
       month AS "Month",
       month_name AS "Month Name",
       west AS "West",
       midwest AS "Midwest",
       south AS "South",
       northeast AS "Northeast"
FROM tutorial.us_housing_units;

-- 2. LIMIT: Biopsia de datos. 
-- Obtención de una muestra pequeña para entender la estructura.
SELECT *
FROM tutorial.us_housing_units
LIMIT 15;

-- 3. OPERADORES DE COMPARACIÓN: Valores de referencia.
-- Identificación de registros por encima o debajo de un umbral.
-- Ejemplo: Producción superior a 20 en la región South.
SELECT *
FROM tutorial.us_housing_units
WHERE south > 20;

-- 4. EXCLUSIÓN (<>): Diagnóstico por descarte.
-- Filtrar todos los meses excepto Enero (1).
SELECT *
FROM tutorial.us_housing_units
WHERE month <> 1;
