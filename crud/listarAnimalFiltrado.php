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

// Obtener la especie y sexo desde el formulario
$especie = isset($_GET['especie']) ? $_GET['especie'] : '';
$sexo = isset($_GET['sexo']) ? $_GET['sexo'] : '';

// Consulta para obtener los datos de los animales por especie y sexo
$sql = "SELECT id_animal, nombre_animal, sexo, img_animal 
        FROM animal 
        WHERE especie = ? AND sexo = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("ss", $especie, $sexo);
$stmt->execute();
$resultado = $stmt->get_result();

// Verificar si hay resultados
if ($resultado->num_rows > 0) {
    echo "<h1>Listado de Animales - " . ucfirst($especie) . "s (" . ucfirst($sexo) . "s)</h1>";
    // Mostrar los datos de los animales
    while ($row = $resultado->fetch_assoc()) {
        $imgPath = '../img/' . $row["img_animal"]; // Ruta completa a la imagen
        echo "Id: " . $row["id_animal"] . " - Nombre: " . $row["nombre_animal"] . " - Sexo: " . $row["sexo"] . " - Imagen: <img src='" . $imgPath . "' width='10%'><br>";
    }
} else {
    echo "No se encontraron animales de la especie y sexo seleccionados.";
}

// Cerrar la conexión
$conn->close();
?>
