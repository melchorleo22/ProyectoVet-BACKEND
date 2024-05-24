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

// Obtener el ID del animal enviado por AJAX
$id_animal = $_POST['animalID'];

// Consulta SQL para obtener los datos del animal
$sql = "SELECT * FROM animal WHERE id_animal = $id_animal";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Si se encuentra el animal, devolver sus datos en formato JSON
    $row = $result->fetch_assoc();
    echo json_encode($row);
} else {
    // Si no se encuentra el animal, devolver un objeto vacío
    echo json_encode([]);
}

// Cerrar la conexión a la base de datos
$conn->close();
?>
