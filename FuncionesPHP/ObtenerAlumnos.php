<?php
require_once 'Conexion.php';

// Recuperar la contraseña cifrada desde la base de datos
$usuarios = $conexion->prepare("SELECT u.UsuarioId ID, u.UsuarioNombre Nombre, u.UsuarioRango Rango, v.IV IV FROM usuarios u INNER JOIN ivs v ON u.UsuarioId = v.UsuarioId WHERE u.UsuarioRango = 'Alumno'");
$usuarios->execute();

$usuariosArray = array();

while ($fila = $usuarios->fetch(PDO::FETCH_ASSOC)) {
    $encrypted_user = $fila['ID'];
    $iv_hex = $fila['IV'];
    $iv = hex2bin($iv_hex);
    
    // Desencriptar los usuarios utilizando el IV almacenado en la base de datos
    $decrypted_user = openssl_decrypt($encrypted_user, "aes-256-cbc", "llave_secreta", 0, $iv);
    
    $usuarioArray = array(
        "UsuarioID"=>$fila["ID"],
        "Nombre"=>$decrypted_user
    );
    $usuariosArray[] = $usuarioArray;
}

header('Content-Type: application/json');
echo json_encode($usuariosArray);
?>