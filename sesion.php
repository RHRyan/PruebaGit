<?php
session_start();
//evaluo que la session continue verificando una de las variables creadasen control.php cuando esta ya no
//coincida con su valor inicial se redirige al archivo de salir.php
if(!$_SESSION["autentificado"]){
	header("Location: salir.php");
}


?>