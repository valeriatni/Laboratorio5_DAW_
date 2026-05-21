
# Supabasey postman
# Integrantes

- Velasquez Puma Brigitte Karolay
- Ticona Nina  Valeria Abigai
- Lerma Ccopa Jhonatan Javier 

---
## Resumen
Este proyecto consiste en el desarrollo de una base de datos usando Supabase, un servidor en la nube gratuito que opera con postgresql incluido el uso de Postman para realizar consultas a la API de Supabase

## Estructura del proyecto:
```
Laboratorio5_DAW_
├── DER_Clinica Oftalmologa.drawio.xml
├── DER_ClinicaOftalmologa.drawio.png
├── README.md
├── SUPABASE Diagrama.png
├── insert.sql
├── queries.sql
└── tablas.sql
```
---

## Descripción de archivos

- **tablas.sql** – Define la estructura completa de la base de datos: tablas, columnas, tipos de datos, claves primarias y foráneas, según los requerimientos de la clínica oftalmológica.
- **insert.sql** – Contiene sentencias `INSERT` para poblar las tablas con datos de ejemplo (pacientes, médicos, citas, etc.).
- **queries.sql** – Consultas `SELECT` útiles para verificar que los datos se hayan insertado correctamente y realizar operaciones de prueba.
- **DER_ClinicaOftalmologa.drawio.xml / .png** – Modelo entidad-relación del sistema, editable con draw.io y su exportación en imagen.
- **SUPABASE Diagrama.png** – Vista del esquema de base de datos generada desde la interfaz de Supabase, mostrando las relaciones ya implementadas.
---
## Guía de implementación

### 1. Creación del proyecto en Supabase
Se inició un nuevo proyecto en [Supabase](https://supabase.com), donde se provisionó una base de datos PostgreSQL en la nube. Se configuraron las credenciales y se obtuvo la **URL del proyecto** y la **API Key** para conexiones posteriores.

### 2. Creación de las tablas
Ejecutamos el script `tablas.sql` desde el **SQL Editor** de Supabase. Este script crea todas las entidades del sistema (por ejemplo: pacientes, doctores, especialidades, citas) y sus relaciones mediante claves foráneas.

### 3. Inserción de datos de prueba
Con el script `insert.sql` insertamos registros reales en las tablas para disponer de información con la que trabajar durante las pruebas.

### 4. Verificación inicial
Utilizamos `queries.sql` para ejecutar consultas `SELECT` y confirmar que las tablas se crearon correctamente y los datos se guardaron como se esperaba.

### 5. Diagrama de la base de datos
Desde el panel de Supabase (**Database → Schema Visualizer**) obtuvimos una imagen del esquema físico de la base de datos `SUPABASE Diagrama.png`. También se elaboró un diagrama entidad-relación conceptual con draw.io `DER_ClinicaOftalmologa.drawio`.

### 6. Obtención de credenciales para Postman
- **URL base**: `https://mggpbibdbybhpwywuues.supabase.co/rest/v1/`
- **API Key**: desde **Settings → API** en Supabase.

### 7. Configuración del entorno en Postman
En Postman se creó un nuevo **Environment** con las siguientes variables:
- `base_url`: la URL base del proyecto.
- `apikey`: la API Key obtenida.

### 9. Headers de autenticación
En la pestaña **Headers** se incluyeron los siguientes campos:
- `apikey`
- `Authorization`
- `Content-Type`
