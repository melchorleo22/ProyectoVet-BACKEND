<?php
// Conexión a la base de datos
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "veterinaria_db";

$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar la conexión
if ($conn->connect_error) {
    die("Error de conexión: " . $conn->connect_error);
}

function modificarAnimal($id_animal) {
    global $conn;

    // Obtener los datos del formulario
    $nombre = $_POST['animalName'];
    $especie = $_POST['animalSpecies'];
    $sexo = $_POST['animalGender'];
    $castrado = $_POST['animalCastrated'];

    // Obtener el nombre de la imagen si se ha subido?
    $imagen = isset($_FILES['animalImage']['name']) ? $_FILES['animalImage']['name'] : '';

    // Consulta SQL para modificar el animal
    $update = "UPDATE animal SET nombre_animal='$nombre', especie='$especie', sexo='$sexo', castrado='$castrado', imagen='$imagen' WHERE id_animal = $id_animal";
    
    $resultado = $conn->query($update);
    if ($resultado === TRUE) {
        echo "Animal modificado exitosamente.";
    } else {
        echo "Error al modificar el animal: " . $conn->error;
    }
}

// Obtener el ID del animal a modificar desde el formulario
$id_animal = $_POST['animalID'];

// Le paso el id obtenido del formulario
modificarAnimal($id_animal);

// Cerrar la conexión a la base de datos
$conn->close();
?>
