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

function listarAnimalesCastrados($conn) {
    $sql = "SELECT 
                animal.id_animal AS id_animal, 
                animal.nombre_animal AS nombre_animal,
                animal.sexo,
                animal.castrado,
                dueno.direccion
            FROM animal
            LEFT JOIN dueno ON animal.id_dueno = dueno.id_dueno
            WHERE animal.castrado = 1";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>ID Animal</th><th>Nombre Animal</th><th>Sexo</th><th>Castrado</th><th>Dirección Dueño</th></tr>";
        while($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row["id_animal"] . "</td>";
            echo "<td>" . $row["nombre_animal"] . "</td>";
            echo "<td>" . $row["sexo"] . "</td>";
            echo "<td>" . ($row["castrado"] ? "Si" : "No") . "</td>";
            echo "<td>" . $row["direccion"] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "No se encontraron animales castrados.";
    }
}

listarAnimalesCastrados($conn);

$conn->close();
?>