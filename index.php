<!DOCTYPE>
<html>
     <head> 
     	<meta charset="UTF-8">
     	<title>Tiendas R'3</title>
     	<link rel="stylesheet" type="text/css" href="css/estilos.css">

     	<link rel="shortcut icon" type="image/x-icon" href="/imagenes/Logo.ico" />
</head>
<body>
  <form name="autentificacion_frm" action="control.php" method="post" enctype="application/x-www-form-urlencoded">
 <?php

 /*solamente mandame mensaje de errores que tenga mi aplicacion; Avisos,Alertas y recomendaciones*/ //no me las vas a mostrar

 error_reporting(E_ALL ^ E_NOTICE);
 //SI el archivo control manda la variable error definida entonces definida entonces significa que hubo un
 //error en los datos le va a mandar un mensaje "verificar tus datos". en caso contrario
 //antes de poner los datos usuarios y password "introduce tus datos"
 if($_GET["error"]=="si"){
  echo "<center><span>Checa tus Datos</span></center>";
 }else{
  echo "";
 }


 ?>

<h1>Tiendas R'3...Tecnologia y màs</h1>
<marquee><h2>Tu mejor soluci&oacute;n</h2></marquee>
	<div class="containet">
	
	<img src="imagenes/user.png">
	<h1 class="Ini">Inicia Sesion</h1>
	<font>
		<div class="font-input">
		<input type="text" name="usuario_txt" placeholder="Ingresa Tu Nombre de usuario">

      </div>
      <div class="form-input">
      <input type="password" name="passwor_txt" placeholder="Ingresa tu Contraseña">
      </div>
      <a href="./CarritoCompras/index.php?id=<?php ?>" class="btn-login" name="entrar_txt">Entrar</a><br>
	</font>
		</div>
    <form>
	
</body>
</html>