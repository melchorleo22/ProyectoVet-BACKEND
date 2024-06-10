<?php
$servername = "localhost"; // Nombre del servidor de la base de datos
$username = "root"; // Nombre de usuario de la base de datos
$password = "root"; // Contraseña de la base de datos
$dbname = "veterinaria_db"; // Nombre de la base de datos

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

echo "Conexión exitosa"; // Esto es opcional, solo para verificar que la conexión se haya realizado correctamente

// Cerrar conexión al finalizar
$conn->close();
