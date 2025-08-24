<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Listado de Alumnos</title>
    <!-- Incluye el CDN de Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap');
        body {
            font-family: 'Inter', sans-serif;
            @apply bg-gray-900 text-gray-200;
        }
        /* Estilo para que la tabla sea responsiva en pantallas pequeñas */
        .table-responsive {
            overflow-x: auto;
        }
        @media (max-width: 639px) { /* Tailwind's 'sm' breakpoint */
            .table-responsive table {
                display: block;
                width: 100%;
            }
            .table-responsive thead {
                display: none;
            }
            .table-responsive tbody, .table-responsive tr {
                display: block;
            }
            .table-responsive tr {
                margin-bottom: 0.5rem;
                border-radius: 0.75rem; /* rounded-xl */
                box-shadow: 0 4px 6px -1px rgba(0, 0, 0, 0.1), 0 2px 4px -1px rgba(0, 0, 0, 0.06); /* shadow-xl */
            }
            .table-responsive td {
                display: block;
                text-align: left;
                border-bottom: 1px solid #4a5568; /* gray-600 */
                padding: 0.75rem 1.5rem; /* py-3 px-6 */
            }
            .table-responsive td:last-child {
                border-bottom: 0;
            }
            .table-responsive td::before {
                content: attr(data-label);
                font-weight: 600; /* font-semibold */
                margin-right: 0.5rem;
                color: #9ca3af; /* gray-400 */
            }
        }
    </style>
     <!-- Incluye la librería de iconos de Phosphor Icons -->
    <script src="https://unpkg.com/phosphor-icons"></script>
</head>
<body class="flex flex-col min-h-screen">

   <!-- Header (Encabezado) -->
    <header class="bg-gray-800 shadow-md py-4 px-6 md:px-12">
        <div class="container mx-auto flex justify-between items-center">
            <!-- Título con icono -->
            <h1 class="text-3xl font-bold text-white flex items-center">
                <i class="ph ph-graduation-cap-fill mr-2 text-white text-4xl"></i>
                Gestión de Alumnos
            </h1>
            <nav>
                <!-- Puedes agregar más enlaces aquí si lo necesitas -->
                <a href="${pageContext.request.contextPath}/index.jsp" class="text-gray-400 hover:text-white transition duration-300 ease-in-out font-semibold">Inicio</a>
            </nav>
        </div>
    </header>

    <!-- Main Content (Contenido Principal) -->
    <main class="flex-grow p-4 md:p-12">
        <div class="container mx-auto">
            <div class="bg-gray-800 p-8 md:p-12 rounded-2xl shadow-xl">
                <div class="flex justify-between items-center mb-6">
                    <h2 class="text-4xl font-extrabold text-white tracking-tight">Listado de Alumnos</h2>
                    <a href="${pageContext.request.contextPath}/ServletAgregarAlumno" class="inline-block bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-2 px-6 rounded-full transition duration-300 ease-in-out shadow-lg transform hover:scale-105">
                        Agregar Alumno
                    </a>
                </div>

                <!-- Tabla de Alumnos -->
                <div class="table-responsive rounded-xl">
                    <table class="w-full text-left table-auto border-collapse">
                        <thead class="bg-gray-700 text-gray-200 uppercase text-sm leading-normal">
                            <tr>
                                <th class="py-3 px-6 text-center">ID</th>
                                <th class="py-3 px-6">Nombre Completo</th>
                                <th class="py-3 px-6">Domicilio</th>
                                <th class="py-3 px-6">Email</th>
                                <th class="py-3 px-6">Teléfono</th>
                            </tr>
                        </thead>
                        <tbody class="text-gray-300 text-sm font-light">
                            <c:forEach var="alumno" items="${alumnos}" varStatus="loop">
                                <tr class="border-b border-gray-700 hover:bg-gray-700 transition-colors duration-200 ease-in-out
                                    <c:if test="${loop.index % 2 == 1}">bg-gray-800</c:if>">
                                    <td class="py-3 px-6 text-center whitespace-nowrap" data-label="ID:">
                                        <a href="${pageContext.request.contextPath}/ServletModificarAlumno?idAlumno=${alumno.idAlumno}" class="font-medium text-indigo-400 hover:text-indigo-300">
                                            ${alumno.idAlumno}
                                        </a>
                                    </td>
                                    <td class="py-3 px-6" data-label="Nombre Completo:">${alumno.nombre} ${alumno.apellido}</td>
                                    <td class="py-3 px-6" data-label="Domicilio:">${alumno.domicilio.calle} ${alumno.domicilio.noCalle} ${alumno.domicilio.pais}</td>
                                    <td class="py-3 px-6" data-label="Email:">${alumno.contacto.email}</td>
                                    <td class="py-3 px-6" data-label="Teléfono:">${alumno.contacto.telefono}</td>
                                </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </main>

    <!-- Footer (Pie de página) -->
    <footer class="bg-gray-800 py-6 px-4 md:px-12 text-center text-gray-400 text-sm">
        <div class="container mx-auto">
            <p>&copy; 2025 Gestión Alumnos. Todos los derechos reservados al autor @jherraizsoler en github.</p>
        </div>
    </footer>

</body>
</html>

