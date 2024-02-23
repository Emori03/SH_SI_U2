<?php
// Función para cifrar un comentario
function encryptComment($comment, $key) {
    $cipher = "aes-256-cbc"; // Algoritmo de cifrado
    $iv_length = openssl_cipher_iv_length($cipher);
    $iv = openssl_random_pseudo_bytes($iv_length);
    $encrypted_comment = openssl_encrypt($comment, $cipher, $key, OPENSSL_RAW_DATA, $iv);
    return base64_encode($iv . $encrypted_comment);
}

// Clave para el cifrado
$key = "clave_secreta";

// Conexión a la base de datos
$conexion = new mysqli('localhost', 'root', '', 'calificaciones');

// Verificar la conexión
if ($conexion->connect_error) {
    die("Error de conexión: " . $conexion->connect_error);
}

// Obtener los datos del formulario
$nombre = $_POST['nombre'];
$comentario = $_POST['comentario'];
$encrypted_comment = encryptComment($comentario, $key);

// Insertar comentario en la base de datos
$sql = "INSERT INTO comentarios (nombre, comentario) VALUES ('$nombre', '$encrypted_comment')";
if ($conexion->query($sql) === TRUE) {
    header("Location: retro.php"); // Redireccionar a la página principal
} else {
    echo "Error: " . $sql . "<br>" . $conexion->error;
}

// Cerrar la conexión
$conexion->close();
?>
