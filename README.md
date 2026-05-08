# SQL for Business Anatomy
**Ruta de aprendizaje SQL orientada a inteligencia de negocios | 2025–2026**

---

## ¿Qué es este proyecto?

Serie de análisis SQL construidos sobre datasets reales (vivienda, música, 
startups) con foco en responder preguntas de negocio concretas.  
Cada módulo aplica una técnica SQL a un caso empresarial específico, 
documentando no solo el *qué* sino el *por qué* de cada decisión analítica.

---

## Módulos

### Módulo 01 — SQL Básico: Filtrado y Muestreo
**Dataset:** `tutorial.us_housing_units` (unidades de vivienda por región, EE.UU.)  
**Pregunta de negocio:** ¿En qué periodos la producción habitacional superó 
umbrales críticos por región?

Técnicas aplicadas:
- `ALIAS (AS)` — presentación de columnas para reportes
- `LIMIT` — muestreo rápido para reconocimiento de estructura
- Operadores de comparación y exclusión para detección de umbrales
- `LIKE / ILIKE`, `IN`, `BETWEEN` para filtrado de patrones y rangos

---

### Módulo 02 — SQL Intermedio: JOINs y Métricas de Negocio
**Dataset:** `tutorial.crunchbase_companies` + `tutorial.crunchbase_acquisitions`  
**Pregunta de negocio:** ¿Qué estados concentran mayor actividad de adquisición 
de startups y cuál es la tasa de adquisición sobre el universo total de empresas?

Técnicas aplicadas:
- `LEFT JOIN` — análisis inclusivo que preserva el universo completo de entidades
- `COUNT DISTINCT` — métricas de alcance (empresas únicas) vs. volumen (registros totales)
- `IS NOT NULL` — limpieza de datos para análisis confiable
- `GROUP BY` + `ORDER BY` — agregación y ranking por estado

**Hallazgo:** Los estados con mayor volumen de empresas no siempre lideran 
en tasa de adquisición — la concentración geográfica del ecosistema VC 
es más selectiva de lo esperado.

---

## Stack Técnico
- SQL (PostgreSQL / Mode Analytics)
- Git / GitHub

## Contexto
Proyecto desarrollado en paralelo al curso de Data Analysis (CoderHouse, 2025–2026)  
como práctica de aplicación a casos reales de negocio.
