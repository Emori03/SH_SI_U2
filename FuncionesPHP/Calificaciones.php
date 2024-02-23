<?php
require_once 'Conexion.php';
// Verificar si se recibieron datos del formulario
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Obtener los datos del formulario
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
    $calificacion = $_POST['calificacion'];
    $encrypted_qualification = hash('sha256', $calificacion);

    // Debug: Imprimir los datos recibidos del formulario
    echo "Nombre: " . $nombre . "<br>";
    echo "Apellido: " . $apellido . "<br>";
    echo "Calificación: " . $calificacion . "<br>";

    // Preparar la consulta SQL
    $calificacion = $conexion->prepare("INSERT INTO estudiantes (nombre, apellido, calificacion) VALUES ('$nombre', '$apellido', '$encrypted_qualification')");
        
    // Ejecutar la consulta
    $calificacion->execute();

}

?>
