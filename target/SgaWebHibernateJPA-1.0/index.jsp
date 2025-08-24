<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio</title>
    <!-- Incluye el CDN de Tailwind CSS -->
    <script src="https://cdn.tailwindcss.com"></script>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap');
        body {
            font-family: 'Inter', sans-serif;
            @apply bg-gray-900 text-gray-200;
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
    <main class="flex-grow flex items-center justify-center p-4">
        <div class="bg-gray-800 p-8 md:p-12 rounded-2xl shadow-xl max-w-lg w-full text-center">
            <h2 class="text-4xl font-extrabold mb-6 text-white tracking-tight">Bienvenido</h2>
            <p class="text-lg text-gray-400 mb-8">Esta es la página de inicio. Haz clic en el siguiente enlace para ver el listado de alumnos.</p>
            <a href="${pageContext.request.contextPath}/ServletListadoAlumnos" class="inline-block bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 px-8 rounded-full transition duration-300 ease-in-out shadow-lg transform hover:scale-105">
                Listado de Alumnos
            </a>
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

