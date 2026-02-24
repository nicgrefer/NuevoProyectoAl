# 🎓 Proyecto de Migración de Base de Datos EDUCA a Business Central

## 🎯 Objetivo del Proyecto
El objetivo principal de este proyecto es la **migración de la Base de Datos (BD) existente EDUCA al software ERP Microsoft 365 Business Central**.

El centro educativo **Gregorio Fernández** busca integrar sus diferentes áreas funcionales, optimizar la relación con los alumnos (clientes) y obtener una ventaja competitiva en el mercado mediante el uso de un ERP.

---

## 🏫 Centro de Enseñanza

- **Nombre:** Centro de Enseñanza Concertada *Gregorio Fernández*
- **Módulo:** SGE
- **Curso:** 25-26
---

## 🛠️ Diseño de la Base de Datos (BD) EDUCA

La base de datos **EDUCA** almacena información clave del centro, incluyendo cursos, clases, estudiantes, matrículas, profesorado (claustro), departamentos y personal no docente.

---

## 📋 Tablas Principales

La BD consta de las siguientes **siete tablas**:

| Tabla | Descripción | Clave Principal |
|------|-------------|----------------|
| **CURSOS** | Información sobre los cursos impartidos (nombre, créditos, tarifa). | `Código curso` |
| **DEPARTAMENTOS** | Información de las áreas departamentales y su ubicación. | `Código dept.` |
| **CLASES** | Detalles de las secciones de los cursos (día, hora, ubicación). | `Código curso`, `Sección` |
| **ESTUDIANTES** | Datos de los alumnos matriculados. | `Código estudiante` |
| **MATRÍCULAS** | Registros de las inscripciones de alumnos en clases. | `Código curso`, `Sección`, `Código estudiante` |
| **CLAUSTRO** | Información del profesorado (docentes). | `Código profesor` |
| **PERSONAL** | Información del personal no docente. | `Código personal` |

---

## 🔗 Relaciones Esenciales 

![Diagrama](/utils/ModeloRelacional.drawio.png)

---

## 📝 Requisitos de Migración y Funcionalidades Adicionales

### 1. Campos Calculados y de Filtrado

Durante la implementación en **Microsoft 365 Business Central**, se deberán incluir los siguientes campos calculados:

#### 📌 CLAUSTRO

- **Campo: `Num. ayud.` (Número de Ayudantes)**  
  Muestra automáticamente el número de ayudantes asignados a cada profesor.  
  > Nota: Un ayudante (cargo = *Ayudante* en la tabla `PERSONAL`) solo puede estar asignado a un único profesor.

  **Acción requerida:**  
  - Establecer una relación entre `PERSONAL` (Ayudantes) y `CLAUSTRO` (Profesores).

- **Número de Clases Impartidas**  
  Permite conocer cuántas clases imparte cada profesor.

  **Funcionalidad adicional:**  
  - Filtrar por **día de la semana** para conocer el número de clases impartidas en un día concreto.

  **Acción requerida:**  
  - Modificar las tablas `CLAUSTRO` y `CLASES`.

#### 📌 DEPARTAMENTOS

- **Promedio de Tarifa de Laboratorio**  
  Almacena el promedio de la **Tarifa** (tabla `CURSOS`) de los cursos asociados a cada departamento.

---

### 2. Propiedades de Campos

Al crear las nuevas tablas en Business Central, se deberán aplicar las siguientes **validaciones y propiedades**:

| Tabla | Campo | Propiedades / Restricciones |
|------|-------|-----------------------------|
| **CURSOS** | `Código curso` | Letras mayúsculas, requerido |
|  | `Créditos` | Valor por defecto: 0 |
|  | `Tarifa` | Decimales: 2 |
| **DEPARTAMENTOS** | `Código dept.` | Letras mayúsculas, requerido |
|  | `Despacho` | Valor por defecto: 0, valor positivo |
| **ESTUDIANTES** | `Código estudiante` | Numérico, requerido |
|  | `Sexo` | Valores permitidos: (blanco), H, M |
| **CLAUSTRO** | `Sueldo` | Decimales: 2, valor positivo |
| **PERSONAL** | `Sueldo` | Decimales: 2, valor positivo |

---
