<?php
// Verificar si se han enviado los datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Verificar si se han proporcionado todos los campos necesarios
    if (isset($_POST['animalID']) && isset($_POST['animalName']) && isset($_POST['animalSpecies']) && isset($_POST['animalGender']) && isset($_POST['animalCastrated'])) {
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

        // Obtener los datos del formulario
        $id_animal = $_POST['animalID'];
        $nombre = $_POST['animalName'];
        $especie = $_POST['animalSpecies'];
        $sexo = $_POST['animalGender'];
        $castrado = $_POST['animalCastrated'];

        // Consulta SQL para actualizar los datos del animal
        $sql = "UPDATE animal SET nombre_animal='$nombre', especie='$especie', sexo='$sexo', castrado='$castrado' WHERE id_animal = $id_animal";

        // Ejecutar la consulta SQL
        if ($conn->query($sql) === TRUE) {
            echo "Animal modificado exitosamente.";
        } else {
            echo "Error al modificar el animal: " . $conn->error;
        }

        // Cerrar la conexión a la base de datos
        $conn->close();
    } else {
        echo "Todos los campos son obligatorios.";
    }
} else {
    echo "Acceso no autorizado.";
}
?>
