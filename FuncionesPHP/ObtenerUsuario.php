<?php
session_start();

$datos = array(
    "ID"=>$_SESSION['ID'],
    "Nombre"=>$_SESSION['Nombre'],
    "Rango"=>$_SESSION['Rango']
);

header('Content-Type: application/json');
echo json_encode($datos);
?>