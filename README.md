# 🚜 "FarmWollok"

## 📋 Contexto
En la cooperativa **"La Granja Wollok"**, los granjeros gestionan diversos **recursos** (animales, plantas, etc.) para obtener **unidades de producción**. El éxito de las jornadas laborales dependen de que los granjeros exploten correctamente el potencial de cada recurso según el clima y la disponibilidad.

---

## 🌻 Recursos Disponibles

### Vaca (Animal)
Su producción de leche depende de su estado de saciedad:
- **Saciada:** Produce 30 unidades | ✅ Apto exportación.
- **Hambrienta:** Produce 15 unidades | ❌ No apto exportación.

### Gallina (Animal)
Su producción depende del alimento asignado:
- **Maíz:** Produce 10 unidades | ✅ Apto exportación.
- **Cereales:** Produce 12 unidades si el día está **soleado**, pero solo 8 si está **nublado**.
  - Es apto para exportación solo si produce más de 9 unidades.

### Manzano (Cosecha)
- **Producción:** 20 unidades.
- **Exportación:** ✅ Siempre es apto para exportación.

---

## 👨‍🌾 Granjeros

Los granjeros solo pueden `trabajar` con recursos que **tienen a su cargo** y si cumplen con sus **condiciones de personalidad**.

### 👩‍🌾 Ana (La Especialista)
- **Recursos iniciales:** Gallina, Manzano.

**Personalidad:**
- Solo necesita tener el recurso asignado para trabajar con él.
- **Bonus Exportación:** Recibe el **triple** de puntos si el recurso es apto para exportación.
- **Penalización:** Recibe la **mitad** de puntos si el recurso NO es apto para exportación.
- **Aprendizaje:** Solo acepta sumar a su cargo recursos que sean aptos para exportación.

### 🤠 Beto (El Cooperativo)
- **Recursos iniciales:** Vaca, Gallina.

**Personalidad:**
- Puede trabajar cuando tiene al menos 2 recursos a su cargo.
- **Bonus Maquinaria:** +10 unidades extra si su tractor está funcionando.
- **Aprendizaje:** Puede aprender a gestionar cualquier tipo de recurso nuevo.

### 🧔 Carlos (El Tradicional)
- **Recurso inicial:** Vaca (solo puede gestionar **un recurso a la vez**).
- **Ayudantes:** 5 iniciales.

**Personalidad:**
- **Condición para trabajar:** Que su cantidad de ayudantes sea **par** y no supere las **500 unidades** acumuladas.
- **Bonus Ayudantes:** Suma +2 unidades por cada ayudante que tiene.
- **Aprendizaje:** Al aprender un recurso nuevo, olvida el anterior y contrata a un nuevo ayudante (+1).

---

## 🏢 La Cooperativa

La cooperativa se encarga de gestionar las jornadas laborales y cuenta con un registro de todos los granjeros y recursos existentes. También puede contratar o despedir granjeros, y añadir o eliminar recursos.

### Actividades realizadas por la cooperativa:

- **Preparación de la Jornada:**
  1. El clima se vuelve **nublado**.
  2. Todas las vacas se **sacian**.
  3. Las gallinas pasan a comer **cereales**.
- **Asignar Recurso:** Enseñar a todos los granjeros a gestionar un recurso específico.
- **Jornada Laboral:** Encargar que todos los granjeros trabajen con un recurso indicado.
- **Granjero del Mes:** Encontrar al granjero con más unidades acumuladas.
- **Nivel Legendario:** Verificar si algún granjero superó las 1000 unidades.
- **Recurso más productivo:** Encontrar el recurso de la cooperativa que más unidades otorga actualmente.
- **Censo:** Contar cuántos granjeros pueden trabajar con un recurso dado.
- **Eslabón Débil:** De los granjeros que pueden trabajar con un determinado recurso, averiguar el menos productivo.

---

## ✅ Tests Mínimos

- 🐮 Una vaca saciada otorga 30 unidades y es apta para exportación.
- 👩‍🌾 Ana suma 60 unidades al trabajar con el Manzano.
- 🧔 Carlos, tras aprender a gestionar el Manzano, tiene 6 ayudantes y olvida a la Vaca.
- 🏆 Luego de **preparar la jornada**, que **todos aprendan la Vaca** y **todos trabajen con la Vaca**, verificar quién es el granjero del mes.