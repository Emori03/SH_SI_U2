<?php
require_once 'Conexion.php';
session_start();
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

// Obtener los datos del formulario
$trabajo = $_POST['trabajo'];
$comentario = $_POST['comentario'];
$encrypted_comment = encryptComment($comentario, $key);

try {
    // Preparar la consulta SQL
    $comentario = $conexion->prepare("INSERT INTO comentarios(nombre, comentario, TrabajoId, UsuarioId) VALUES(:nombre, :comentario, :trabajo, :usuario)");
    $comentario->bindParam(':nombre', $_SESSION["Nombre"]);
    $comentario->bindParam(':comentario', $encrypted_comment);
    $comentario->bindParam(':trabajo', $trabajo);
    $comentario->bindParam(':usuario', $_SESSION["ID"]);
    
    $comentario->execute();

    header("Location:../Paginas/Alumnos.html");
} catch(PDOException $e) {
    echo "Error al registrar el comentario: " . $e->getMessage();
}
?>
