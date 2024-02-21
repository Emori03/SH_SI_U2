<?php
require_once 'Conexion.php';

// Recibir datos del formulario
$usuario = $_POST['usuario'];
$contrasena = $_POST['contrasena'];

// Recuperar la contraseña cifrada desde la base de datos
$ingreso = $conexion->prepare("SELECT u.UsuarioContrasena Contrasena, u.UsuarioRango Rango, v.IV IV FROM usuarios u INNER JOIN ivs v ON u.UsuarioId = v.UsuarioId WHERE u.UsuarioNombre = :username");
$ingreso->bindParam(':username', $usuario);
$ingreso->execute();
$row = $ingreso->fetch();

$encrypted_password = $row['Contrasena'];
$iv_hex = $row['IV'];
$iv = hex2bin($iv_hex);

// Desencriptar la contraseña utilizando el IV almacenado en la base de datos
$decrypted_password = openssl_decrypt($encrypted_password, "aes-256-cbc", "llave_secreta", 0, $iv);

// Verificar la contraseña ingresada con la contraseña almacenada desencriptada
if ($decrypted_password === $contrasena) {
    if ($row['Rango'] === 'Alumno') {
        header("location:../Paginas/Alumnos.html");
    } elseif ($row['Rango'] === 'Docente' || $row['Rango'] === 'Administrador') {
        header("location:../Paginas/Maestros.html");
    }
} else {
    echo("Contraseña o usuario Incorrectos");
}
?>
