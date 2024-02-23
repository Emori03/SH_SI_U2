<?php
require_once 'Conexion.php';


?>
            <table class="table table-striped center-table">
                <thead>
                    <tr>
                        <th scope="col">Id</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Calificación</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    // Realizar la consulta SQL para obtener los datos de la tabla estudiantes
                    $query = "SELECT * FROM estudiantes";
                    $result = $conn->query($query);

                    // Verificar si se obtuvieron resultados
                    if ($result->num_rows > 0) {
                        // Iterar sobre los resultados y mostrarlos en la tabla
                        while ($row = $result->fetch_assoc()) {
                            echo "<tr>";
                            echo "<td>" . $row['id'] . "</td>";
                            echo "<td>" . $row['nombre'] . "</td>";
                            echo "<td>" . $row['apellido'] . "</td>";
                            echo "<td>" . $row['calificacion'] . "</td>";
                            echo "</tr>";
                        }
                    } else {
                        echo "<tr><td colspan='4'>No se encontraron registros</td></tr>";
                    }
                    ?>
                </tbody>
            </table>
