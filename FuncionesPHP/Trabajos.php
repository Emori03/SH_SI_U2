<?php
require_once 'Conexion.php';

try {
    $trabajos = $conexion->prepare('SELECT t.TrabajoId TrabajoId, t.Trabajo Trabajo, u.UsuarioNombre Docente, t.MateriaId, t.FechaEntrega FechaEntrega FROM trabajos t INNER JOIN usuarios u ON u.UsuarioId = t.DocenteId');
    $trabajos->execute();
    $datos = $trabajos->fetchAll(PDO::FETCH_ASSOC);

    // Devolver los resultados como JSON
    header('Content-Type: application/json');
    echo json_encode($datos);
} catch (PDOException $e) {
    // Manejar errores de conexión o consulta
    echo "Error de conexión: " . $e->getMessage();
}
?>