<?php
require_once 'Conexion.php';
try {
    $trabajos = $conexion->prepare('SELECT TrabajoId, Trabajo, DocenteId, MateriaId, FechaEntrega FROM trabajos WHERE 1');
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