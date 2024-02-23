<?php
// Conexión a la base de datos
$conexion = new mysqli('localhost', 'usuario', 'contraseña', 'comentarios');

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Obtener los datos del formulario
$nombre = $_POST['nombre'];
$comentario = $_POST['comentario'];

// Insertar comentario en la base de datos
$sql = "INSERT INTO comentarios (nombre, comentario) VALUES ('$nombre', '$comentario')";
if ($conexion->query($sql) === TRUE) {
    header("Location: retro.php"); // Redireccionar a la página principal
} else {
    echo "Error: " . $sql . "<br>" . $conexion->error;
}

// Cerrar la conexión
$conexion->close();
?>
