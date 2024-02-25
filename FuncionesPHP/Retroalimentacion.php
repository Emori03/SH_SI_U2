<?php
require_once 'Conexion.php';
session_start();
// Función para descifrar un comentario
function decryptComment($encrypted_comment, $key) {
    $cipher = "aes-256-cbc"; // Algoritmo de cifrado
    $data = base64_decode($encrypted_comment);
    $iv_length = openssl_cipher_iv_length($cipher);
    $iv = substr($data, 0, $iv_length);
    $comment = openssl_decrypt(substr($data, $iv_length), $cipher, $key, OPENSSL_RAW_DATA, $iv);
    return $comment;
}

// Clave para el cifrado
$key = "clave_secreta";

try {
    // Preparar la consulta SQL
    $comentario = $conexion->prepare("SELECT c.id id, c.nombre nombre, c.comentario comentario, c.TrabajoId TrabajoId, t.Trabajo Trabajo FROM comentarios c INNER JOIN trabajos t ON t.TrabajoId = c.TrabajoId ORDER BY c.TrabajoId");
    
    $comentario->execute();
    $filas = $comentario->fetchAll(PDO::FETCH_ASSOC);
    $longitud = count($filas);
    $datos = array();
    for ($i=0; $i < $longitud; $i++) {
        $desencrypted_coment = decryptComment($filas[$i]["comentario"], $key);

        $array = array(
            "CometarioID" => $filas[$i]["id"],
            "Nombre" =>  $filas[$i]["nombre"],
            "Comentario" =>  $desencrypted_coment,
            "TrabajoId" =>  $filas[$i]["TrabajoId"],
            "Trabajo" =>  $filas[$i]["Trabajo"]
        );
        $datos[] = $array;
    }

    header('Content-Type: application/json');
    echo json_encode($datos);
} catch(PDOException $e) {
    echo "Error al registrar el comentario: " . $e->getMessage();
}
?>
