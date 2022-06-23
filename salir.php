<?php
//siempre ay que iniciar la sesion siempre hay que esta activado
session_start();
//destruida
session_destroy();
//salimos y la dirijimos al la pagina principal
header("location: index.php");


?>