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

// Función para eliminar un animal
function eliminarAnimal($id_animal) {
    global $conn;
    
    // Consulta SQL para eliminar el animal
    $sql = "DELETE FROM animal WHERE id_animal = $id_animal";
    
    if ($conn->query($sql) === TRUE) {
        echo "Animal eliminado exitosamente.";
    } else {
        echo "Error al eliminar el animal: " . $conn->error;
    }
}

// Obtener el ID del animal a eliminar desde el formulario
$id_animal = $_POST['id-animal'];

// Llamar a la función eliminarAnimal
eliminarAnimal($id_animal);

// Cerrar la conexión a la base de datos
$conn->close();
?>