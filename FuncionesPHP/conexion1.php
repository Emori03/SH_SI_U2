<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>conexion</title>
</head>
<body>
    <?php
    class Conexion extends PDO
    {
        private $tipo_base='mysql';
        private $host='127.0.0.1';
        private $nombre_de_base='calificaciones';
        private $usuario='root';
        private $contrasena='';

        public function __construct()
        {
            try
            {
                parent::__construct($this->tipo_de_base.':host='.$this->host.';dbname='.$this->nombre_de_base,$this->id,$this->nombre,$this->comentario,$this->fecha);
            }
            catch(PDOException $e)
            {
                echo 'Error'.$e->getMessage();
            }
        }
    }
    ?>
</body>
</html>