<?php

$servername = "localhost";
$username = "root";
$password = "";
$database = "veterinaria_db";
$conn = new mysqli($servername, $username, $password, $database);
if ($conn->connect_error) {
    die("La conexión falló: " . $conn->connect_error);
}

if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    $id_animal = intval($_POST['animalID']);
    $base_url = "http://localhost/ProyectoVet-BACKEND/crud/buscarAnimalPorId.php";

    // Iniciar captura de búfer
    ob_start();
    // Incluir y ejecutar el archivo buscarAnimalPorId.php, capturando su salida
    include 'buscarAnimalPorId.php';
    // Obtener y limpiar el contenido del búfer de salida
    $result = ob_get_clean();
    
    // Decodificar la salida JSON del script incluido
    $animal_data = json_decode($result, true);

    // Verificar si el animal fue encontrado
    if (isset($animal_data['id_animal'])) {
        $link = $base_url . $id_animal; // Crear el enlace para compartir
        echo json_encode(["link" => $link]);
    } else {
        echo json_encode(["error" => "Animal no encontrado"]);
    }
} else {
    echo json_encode(["error" => "Método no permitido"]);
}

$conn->close();
?>
