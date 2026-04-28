# 📊 Retail Sales Performance Analysis

## 📌 Descripción del proyecto

Este proyecto presenta un análisis end-to-end del desempeño comercial de un negocio de retail, integrando procesos ETL, análisis en SQL y visualización en Power BI para generar insights accionables orientados a la toma de decisiones.

Se desarrolló un flujo completo de análisis que permite identificar tendencias de ventas, comportamiento de clientes y oportunidades de mejora en el negocio.

---

## 🎯 Objetivo

Analizar el comportamiento de ventas para:

* Identificar las ciudades con mayor contribución al ingreso
* Evaluar tendencias de crecimiento en el tiempo
* Detectar oportunidades de mejora en el desempeño comercial
* Analizar indicadores clave como ticket promedio y tasa de cancelación

---

## 🛠️ Herramientas utilizadas

* **SQL** → Análisis y consultas de datos
* **Power BI** → Visualización y construcción de dashboard
* **Pentaho (Kettle)** → Procesos ETL (extracción, transformación y carga de datos)

---

## 🔄 Proceso del análisis

### 1. ETL (Pentaho)

Se realizaron procesos de transformación de datos para:

* Integrar información de órdenes, clientes y pagos
* Limpiar y estructurar los datos para análisis
* Generar datasets listos para consumo analítico

### 2. Análisis en SQL

Se desarrollaron consultas para:

* Ventas por mes
* Productos más rentables
* Segmentación de clientes (riesgo de abandono)
* Análisis por región
* Top categorías y desempeño comercial

### 3. Visualización (Power BI)

Se construyó un dashboard interactivo que incluye:

* KPIs clave (ventas, órdenes, clientes, ticket promedio)
* Análisis de ventas por ciudad
* Tendencias de ventas en el tiempo
* Indicadores de desempeño (órdenes por cliente, tasa de cancelación)

---

## 📊 Principales insights

* 📌 São Paulo concentra la mayor participación de ventas, consolidándose como el principal motor comercial del negocio.
* 📌 Se evidencia una tendencia de crecimiento sostenido en 2018 frente a años anteriores.
* 📌 La tasa de cancelación es baja (~0.63%), lo que refleja estabilidad en el proceso de ventas.
* 📌 Existe una oportunidad clara de incrementar el ticket promedio para maximizar ingresos sin afectar la operación.

---

## 📁 Estructura del proyecto

📁 SQL/
├── ClientesRiesgoAbandono.sql
├── VentasMes.sql
├── ProductosRentables.sql
├── TOP10.sql
└── PorRegion.sql

📁 Pentaho/
└── Archivos .ktr (Pentaho transformations)

📁 PowerBI/
└── Dashboard.pbix

## 📷 Dashboard

Dashboard interactivo desarrollado en Power BI para el análisis de desempeño comercial:

<img width="1442" height="798" alt="image" src="https://github.com/user-attachments/assets/87bb5077-9e8d-40cd-a8de-6a5d1732668e" />

---

## 🚀 Resultados

Este proyecto permite entender el comportamiento del negocio y proporciona una base para la toma de decisiones estratégicas, enfocadas en crecimiento de ventas, optimización de clientes y mejora del desempeño comercial.

---

## 💡 Impacto del análisis

Este proyecto permite:
- Identificar oportunidades de crecimiento en ciudades clave
- Evaluar la eficiencia del proceso de ventas
- Detectar patrones de comportamiento de clientes
- Apoyar decisiones estratégicas basadas en datos

## 👩‍💻 Autor

**Carito**
Data Analyst | Power BI | SQL | ETL (Pentaho)  
Enfocada en análisis de datos y generación de insights de negocio
