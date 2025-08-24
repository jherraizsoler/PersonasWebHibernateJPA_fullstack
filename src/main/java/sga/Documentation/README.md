# 📚 Sistema de Gestión de Alumnos

## Descripción del Proyecto

Este proyecto es una aplicación web **full-stack** que implementa un sistema CRUD (Crear, Leer, Actualizar, Borrar) completo para la gestión de datos de alumnos. La aplicación utiliza tecnologías modernas de Java para el backend y una interfaz de usuario minimalista y responsiva con Tailwind CSS en el frontend.

El sistema permite:
* Visualizar un listado completo de alumnos.
* Agregar nuevos alumnos con sus datos personales, de domicilio y de contacto.
* Modificar la información de un alumno existente.
* Eliminar registros de alumnos de la base de datos.

---

## Tecnologías Utilizadas

Este proyecto ha sido construido utilizando las siguientes tecnologías clave:

### Backend
* **Apache Netbeans IDE 26**: IDE utilizado para desplegar este proyecto backend
* **Java 21**: Lenguaje de programación principal.
* **Jakarta EE 11**: Plataforma para el desarrollo de aplicaciones empresariales.
* **Maven**: Herramienta de gestión de dependencias y construcción del proyecto.
* **Hibernate ORM 6.6.9.Final**: Framework para la persistencia de datos (mapeo objeto-relacional).
* **MySQL Connector/J 9.2.0**: Driver de base de datos para la conexión con MySQL.
* **Apache Log4j 2.24.3**: Herramienta de logging para el registro de eventos y depuración.

### Frontend
* **JSP (JavaServer Pages)**: Tecnología para la creación de páginas web dinámicas.
* **Tailwind CSS**: Framework de CSS para el diseño de la interfaz de usuario.

---

## Requisitos Previos

Antes de ejecutar este proyecto, asegúrate de tener instalado lo siguiente:
* [**Apache Netbeans IDE 26**](https://netbeans.apache.org/front/main/download/nb26/)
* [**JDK 21**](https://www.oracle.com/java/technologies/downloads/) o superior.
* [**Maven**](https://maven.apache.org/download.cgi).
* Un servidor de aplicaciones compatible con Jakarta EE, como **Apache Tomcat 10+** o **Payara**.
* [**MySQL**](https://www.mysql.com/downloads/).
* [**GlassFish Server 8.0.0**] Tener instalado este servidor GlassFish Server  version 8.0.0
  En caso de no tenerlo seguir el siguiente manual de instalación de GlassFish Server  version 8.0.0 readmeInstallGlassfishServer8.0.0.md
---

## Instrucciones de Uso

Sigue estos pasos para poner en marcha la aplicación en tu entorno local.

### 1. Clonar el Repositorio

Abre tu terminal y clona el repositorio de GitHub:

```bash
git clone [https://github.com/tu_usuario/nombre_del_repositorio.git](https://github.com/tu_usuario/nombre_del_repositorio.git)
cd nombre_del_repositorio
```

### 2. Configuración de la Base de Datos

1.  Abre MySQL Workbench o tu cliente de base de datos preferido.
2.  Crea una base de datos con el nombre que desees (ej. `sga_db`).
3.  Ejecuta los scripts de la base de datos para crear las tablas necesarias (debes tener estos scripts en tu proyecto).

### 3. Configuración del Proyecto

Abre el proyecto en tu IDE (como IntelliJ IDEA, Eclipse o VS Code) y actualiza el archivo de configuración de Hibernate (`hibernate.cfg.xml`) con las credenciales de tu base de datos MySQL.

### 4. Compilar y Empaquetar

Desde la raíz del proyecto, utiliza Maven para compilar y empaquetar la aplicación en un archivo `.war`:

```bash
mvn clean package
```

Esto generará el archivo `SgaWebHibernateJPA.war` en la carpeta `target/`.

### 5. Despliegue de la Aplicación

Copia el archivo `SgaWebHibernateJPA.war` a la carpeta `webapps/` de tu servidor de aplicaciones (ej. Apache Tomcat). El servidor lo desplegará automáticamente.

### 6. Acceder a la Aplicación

Una vez que el servidor haya iniciado, abre tu navegador y visita la siguiente URL:

```
http://localhost:8080/SgaWebHibernateJPA/
```

---

## Autor

* **Nombre de Autor**: Jorge Herraiz Soler
* **GitHub**: [https://github.com/jherraizsoler]
