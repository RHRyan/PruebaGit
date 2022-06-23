<?php
//vamos a validar los datos que vienen del formulario si los datos que vienen de formulario es cris y contraseña correcta 
if($_POST["usuario_txt"]=="RyanR." && $_POST["password_txt"]=="qwerty123"){
	session_start();
	//declaro mis valores de la session
	$_SESSION["autentificado"] = true; //me va a permitir saber si la sesion sigue vigente
	$_SESSION["usuario"] = $_POST["usuario_txt"];

	//lo envia al archivo protegido.php
	header("Location: CarritoCompras");
}else{
	//y si se equivoca el usuario que lo envie al index.php
	header("Location: index.php?error=si");
	

}

?>