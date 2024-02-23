
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sección de Retroalimentacion</title>
    <link rel="stylesheet" href="styles.css">
</head>
<style>
   body {
    font-family: Arial, sans-serif;
}

.container {
    width: 80%;
    margin: 0 auto;
}

form input,
form textarea {
    width: 100%;
    margin-bottom: 10px;
}

form button {
    padding: 10px 20px;
    background-color: #007bff;
    color: #fff;
    border: none;
    cursor: pointer;
}

form button:hover {
    background-color: #0056b3;
}

.comentario {
    border-bottom: 1px solid #ccc;
    margin-bottom: 10px;
    padding-bottom: 10px;
}

.comentario span {
    font-weight: bold;
}

.comentario .fecha {
    color: #666;
    font-size: 0.8em;
}

</style>
<body>
    <div class="container">
        <h2>Deja tus comentarios:</h2>
        <form action="retro2.php" method="post">
            <input type="text" name="nombre" placeholder="Nombre" required><br>
            <textarea name="comentario" placeholder="Comentario" rows="4" required></textarea><br>
            <button type="submit">Enviar comentario</button>
        </form>
        <!-- <h2>Comentarios:</h2>
        <div id="comentarios">
            <?php include 'conexion.php'; ?>
            
        </div> -->
    </div>
</body>
</html>
