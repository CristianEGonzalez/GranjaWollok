# 🚜 "Granja Wollok"

## 📋 Contexto
En la cooperativa **"La Granja Wollok"**, los granjeros gestionan diversos **recursos** (animales, plantas, etc.) para obtener **unidades de producción** que pueden vender.

El éxito de las jornadas laborales dependen de que los granjeros exploten correctamente el potencial de cada recurso según el clima y la disponibilidad.

---

## Recursos Disponibles

### 🐮 Vaca 
Su producción de leche depende de su estado de saciedad:
- **Saciada:** Produce 30 unidades | Apto exportación.
- **Hambrienta:** Produce 15 unidades | No apto exportación.

### 🐔 Gallina
Su producción depende del alimento asignado:
- **Maíz:** Produce 10 unidades
- **Trigo:** Produce 12 unidades con **clima templado**, pero solo 8 si hay **clima frío**.
- **Espinacas:** Produce la misma cantidad que el maiz y trigo juntos (independientemente del clima).

Es apto para exportación solo si produce más de 10 unidades.

### 🍎 Manzano
- **Producción:** 20 unidades.
- **Exportación:** Es apto para exportación si hay **clima frío**.

---

## Granjeros

Los granjeros `gestionan recursos`. Y pueden **trabajar** las veces que quieran con los recursos que **gestionan**, para luego vender todos los `recursos trabajados` (juntos por lote) a los **clientes interesados**.

Todos los granjeros comienzan sin dinero.

### 👩‍🌾 Ana
- **Recursos iniciales:** Gallina, Manzano.
- **Precio de Venta:** Ana vende sus recursos trabajados un 10% menos de las unidades que estos producen cuando el cliente no es adinerado.
- **Adquisición de Recursos:** Solo acepta sumar a su cargo nuevos recursos que sean aptos para exportación.

### 🧔 Carlos
- **Recurso inicial:** Vaca
- **Precio de venta de sus productos:** Aumenta sus precios en $20 cada vez que adquiere un nuevo recurso (empieza sin recargo).
- **Adquisición de Recursos:** Adquiere cualquier recurso que no tenga.

## Clientes

Los clientes son quienes `compran` los **lotes** de recursos trabajados según determinadas condiciones propias.

### 👴 Ricardo
Es un `adinerado` empresario por eso sólo le interesa comprar cuando todos los productos son de **exportación**.

### 🙇 Mateo
Como `no es adinerado` siempre regatea los precios y sólo compra cuando hay **clima frío** que es cuando más ahorra.

---

## 🏢 La Cooperativa

La cooperativa se encarga de gestionar las jornadas laborales, cuenta con un registro de todos los granjeros y clientes existentes, y además un lote de recursos. También puede conseguir o desechar recursos (incluso repetidos).

### Actividades realizadas por la cooperativa:
(Indicar con comentarios el método que resuelve cada item solicitado)
- 1 - **Preparación de la Jornada:**
  - Se alimenta a la **vaca**.
  - La gallina pasa a comer **espinacas**.
  - Todos los granjeros adquieren el manzano (si pueden)
- 2 - **Asignar Recurso:** Todos los granjeros adquierenun recurso específico para gestionar.
- 3 - **Jornada Laboral:** Encargar que todos los granjeros trabajen con 2 recursos determinados (si los tienen).
- 4 - **Feria Agrícola:** Todos los granjeros venden sus productos al primer cliente de la cooperativa.
- 5 - **Granjero Legendario:** Verificar si algún granjero superó los $1000.
- 6 - **Reporte de Producción:** Lista de unidades que da cada recurso (actualmente).
- 7 - **Hay terrateniente:** Averiguar si alguno de los cliente quiere comprar el lote de recursos de la cooperativa.
- 8 - **Trabajador rural:** De los granjeros que pueden trabajar con un determinado recurso, averiguar el más humilde (el que tiene  menos dinero)
- 9 - **Balance:** Obtener la suma del dinero actual de todos los granjeros que tengan un determinado recurso.

---

## ✅ Tests Mínimos

### 🐮 Test 1 — Vaca hambrienta: producción y exportación
Una vaca hambrienta produce **15 unidades** y **no es apta** para exportación.

> ⚠️ **Nota:** Este test excepcionalmente puede tener 2 assert.

---

### 🐔 Test 2 — Gallina con espinacas y clima templado
La gallina alimentada con espinacas bajo clima templado produce **22 unidades**.

---

### 👩‍🌾 Test 3 — Ana vende a cliente adinerado
Con **clima frío**, Ana trabaja con el Manzano y lo vende a Ricardo. → El dinero de Ana ahora es **$20**.

---


### 🧔 Test 4 — Carlos adquiere un recurso y sube su recargo
Carlos adquiere el Manzano, llega el **clima frío**, él trabaja el Manzano y vende a Mateo → su dinero ahora es **$40**

---

### 🏢 Test 5 — Balance de granjeros que tienen la Vaca
- Llega el clima frío
- Carlos adquiere el Manzano.
- Luego se realiza una jornada laboral con la Vaca y el Manzano
- La cooperativa organiza la feria agrícola.

Como resultado la **trabajadora rural que puede trabajar el Manzano** es **Ana**.

---

### 🏢 Test 6 — Balance de granjeros que tienen la Vaca
Con la vaca saciada y **clima frío**, Carlos trabaja la Vaca y vende a Mateo → El balance de la cooperativa para ese recurso es **$50**.