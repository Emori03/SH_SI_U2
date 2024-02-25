<?php
require_once 'Conexion.php';

$query = "SELECT * FROM estudiantes";
$calificaciones = $conexion->prepare($query);
$calificaciones ->execute();
$array = array();
if (true) {
    // Iterar sobre los resultados y mostrarlos en la tabla
    while ($row = $calificaciones -> fetch(PDO::FETCH_ASSOC)) {
        $calificacion = 0;

        for ( $i = 1; $i < 10; $i +=  0.1){
            $comparacion = hash("sha256",$i);

        if ($comparacion == $row['calificacion'])
        {
            $calificacion = $i;
            break;        
        }
        }
        $datos= array(
            "Id" => $row['id'],
            "Nombre" => $row['nombre'],
            "Trabajo" => $row['trabajoId'],
            "Calificacion" => $calificacion
        );
        $array[] = $datos;
    }
    header('Content-Type: application/json');
    echo json_encode($array);
} else {
    echo "<tr><td colspan='4'>No se encontraron registros</td></tr>";
}
?>