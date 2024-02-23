<?php
require_once 'Conexion.php';

try {
    // Recibir datos del formulario
    $usuario = $_POST['usuario'];
    $contrasena = $_POST['contrasena'];

    // Generar un IV seguro
    $iv = openssl_random_pseudo_bytes(openssl_cipher_iv_length("aes-256-cbc"));
    // Convertir el IV a una cadena hexadecimal para almacenarlo en la base de datos
    $iv_hex = bin2hex($iv);

    // Cifrado
    $encrypted_public_key = openssl_encrypt($usuario, "aes-256-cbc", "llave_secreta", 0, $iv);
    $encrypted_private_password = openssl_encrypt($contrasena, "aes-256-cbc", "llave_secreta", 0, $iv);

    // Preparar la consulta SQL
    $registro = $conexion->prepare("INSERT INTO usuarios(UsuarioId, UsuarioNombre, UsuarioContrasena, UsuarioRango) VALUES (:userId, :username, :password, 'Alumno')");
    $registro->bindParam(':userId', $encrypted_public_key);
    $registro->bindParam(':username', $usuario);
    $registro->bindParam(':password', $encrypted_private_password);
        
    // Ejecutar la consulta
    $registro->execute();

    // Preparar la consulta SQL
    $desencriptar = $conexion->prepare("INSERT INTO ivs(IV, UsuarioId) VALUES (:iv, :userId)");
    $desencriptar->bindParam(':iv', $iv_hex);
    $desencriptar->bindParam(':userId', $encrypted_public_key);
        
    // Ejecutar la consulta
    $desencriptar->execute();
 
    header("location:../index.html");
} catch(PDOException $e) {
    echo "Error al registrar usuario: " . $e->getMessage();
}

// Cerrar conexión
$conn = null;
?>

