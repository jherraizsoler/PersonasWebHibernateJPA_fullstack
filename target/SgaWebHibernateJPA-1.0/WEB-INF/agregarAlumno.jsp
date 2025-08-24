<%@page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="esES">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Alumno</title>
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
                <a href="${pageContext.request.contextPath}/ServletListadoAlumnos" class="ml-4 text-gray-400 hover:text-white transition duration-300 ease-in-out font-semibold">Listado</a>
            </nav>
        </div>
    </header>

    <!-- Main Content (Contenido Principal) -->
    <main class="flex-grow flex items-center justify-center p-4">
        <div class="bg-gray-800 p-8 md:p-12 rounded-2xl shadow-xl max-w-2xl w-full">
            <h2 class="text-4xl font-extrabold mb-8 text-white tracking-tight text-center">Agregar Alumno</h2>

            <form name="form1" action="${pageContext.request.contextPath}/ServletAgregarAlumno" method="post" class="space-y-6">
                <!-- Sección de Datos Personales -->
                <div>
                    <h3 class="text-2xl font-semibold mb-4 text-indigo-400">Datos Personales</h3>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label for="nombre" class="block text-gray-400 font-medium mb-1">Nombre</label>
                            <input type="text" id="nombre" name="nombre" class="w-full p-3 rounded-lg bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-indigo-500 text-gray-200" required />
                        </div>
                        <div>
                            <label for="apellido" class="block text-gray-400 font-medium mb-1">Apellido</label>
                            <input type="text" id="apellido" name="apellido" class="w-full p-3 rounded-lg bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-indigo-500 text-gray-200" required />
                        </div>
                    </div>
                </div>

                <!-- Sección de Datos Domicilio -->
                <div>
                    <h3 class="text-2xl font-semibold mb-4 text-indigo-400">Datos Domicilio</h3>
                    <div class="grid grid-cols-1 md:grid-cols-3 gap-4">
                        <div>
                            <label for="calle" class="block text-gray-400 font-medium mb-1">Calle</label>
                            <input type="text" id="calle" name="calle" class="w-full p-3 rounded-lg bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-indigo-500 text-gray-200" required />
                        </div>
                        <div>
                            <label for="noCalle" class="block text-gray-400 font-medium mb-1">No. Calle</label>
                            <input type="text" id="noCalle" name="noCalle" class="w-full p-3 rounded-lg bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-indigo-500 text-gray-200" required />
                        </div>
                        <div>
                            <label for="pais" class="block text-gray-400 font-medium mb-1">País</label>
                            <input type="text" id="pais" name="pais" class="w-full p-3 rounded-lg bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-indigo-500 text-gray-200" required />
                        </div>
                    </div>
                </div>

                <!-- Sección de Datos de Contacto -->
                <div>
                    <h3 class="text-2xl font-semibold mb-4 text-indigo-400">Datos de Contacto</h3>
                    <div class="grid grid-cols-1 md:grid-cols-2 gap-4">
                        <div>
                            <label for="email" class="block text-gray-400 font-medium mb-1">Email</label>
                            <input type="email" id="email" name="email" class="w-full p-3 rounded-lg bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-indigo-500 text-gray-200" required />
                        </div>
                        <div>
                            <label for="telefono" class="block text-gray-400 font-medium mb-1">Teléfono</label>
                            <input type="tel" id="telefono" name="telefono" class="w-full p-3 rounded-lg bg-gray-700 border border-gray-600 focus:outline-none focus:ring-2 focus:ring-indigo-500 text-gray-200" required />
                        </div>
                    </div>
                </div>

                <!-- Botón de Enviar -->
                <div class="flex justify-center mt-8">
                    <input type="submit" name="Agregar" value="Agregar" class="w-full sm:w-auto bg-indigo-600 hover:bg-indigo-700 text-white font-bold py-3 px-8 rounded-full transition duration-300 ease-in-out shadow-lg transform hover:scale-105 cursor-pointer" />
                </div>
            </form>
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