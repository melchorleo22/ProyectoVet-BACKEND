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

// Obtener el ID del animal desde el formulario
$id_animal = isset($_GET['id_animal']) ? intval($_GET['id_animal']) : 0;

// Consulta para obtener los datos del animal por ID
$sql = "SELECT animal.id_animal, animal.nombre_animal, animal.sexo, animal.img_animal,dueno.nombre, dueno.direccion, dueno.telefono FROM animal INNER JOIN dueno ON animal.id_dueno = dueno.id_dueno WHERE animal.id_animal = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $id_animal);
$stmt->execute();
$resultado = $stmt->get_result();

// Verificar si hay resultados
// Traer id, nombre,sexo, castrado, fecha_castrado, nombre dueño, telefono dueño, direccion dueño,
if ($resultado->num_rows > 0) {
    // Mostrar los datos del animal
    while ($row = $resultado->fetch_assoc()) {
        echo "Id: " . $row["id_animal"] . " - Nombre: " . $row["nombre_animal"]." - Sexo: ".$row["sexo"]. " - Imagen: <img src='../img/" . $row["img_animal"] . "' width='10%'><br>";
        echo "Propietario: " . $row["nombre"] . "<br>";
        echo "Direccion del dueño: " . $row["direccion"] . "<br>";
        echo "Telefono del dueño: " . $row["telefono"] . "<br>";
    }
} else {
    echo "No se encontraron animales con el ID proporcionado.";
}

// Cerrar la conexión
$conn->close();
?>
