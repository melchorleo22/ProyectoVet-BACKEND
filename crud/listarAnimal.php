<?php

// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$database = "veterinaria_db";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $database);

// Verificar la conexión
if ($conn->connect_error) {
    die("La conexión falló: " . $conn->connect_error);
}


$sql = "SELECT id_animal, nombre_animal, img_animal FROM animal ORDER BY id_animal";

// Ejecutar la consulta
$resultado = $conn->query($sql);

// Verificar si hay resultados

if ($resultado->num_rows > 0) {
    // Iterar sobre los resultados y mostrar cada animal
    while ($row = $resultado->fetch_assoc()) {
        echo "Id: " . $row["id_animal"] . " - Nombre: " . $row["nombre_animal"] . " - Imagen: <img src='../img/" . $row["img_animal"] . " 'width=10%'><br>";
    }
} else {
    echo "No se encontraron animales.";
}


$conn->close();
