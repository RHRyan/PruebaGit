<?php
	include "conexion.php";
?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="utf-8"/>
	<title>Administración de Tiendas R'3</title>
	<link rel="stylesheet" type="text/css" href="./css/estilos.css">
	<link rel="shortcut icon" type="image/x-icon" href="/imagenes/Logo.ico" />
	<script type="text/javascript" src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script type="text/javascript"  href="./js/scripts.js"></script>
</head>
<body>
	<header>
		
		<a href="./carritodecompras.php" title="ver carrito de compras">
			<img src="./imagenes/carrito.png">
		</a>
	</header>
	<section>
	<nav class="menu2">
	  <menu>
	    <li><a href="./">Inicio</a></li>
	    <li><a href="#" class="selected">Admin</a></li>

	  </menu>
	</nav>

	<center><h1>Últimas Compras</h1></center>
	<table border="0px" width="100%">	
		<tr>
			<td>Imagen</td>
			<td>Nombre</td>
			<td>Precio</td>
			<td>Cantidad</td>
			<td>Subtotal</td>
		</tr>	

		<?php
			$re=mysql_query("select * from compras");
			$numeroventa=0;
			while ($f=mysql_fetch_array($re)) {
					if($numeroventa	!=$f['numeroventa']){
						echo '<tr><td>Compra Número: '.$f['numeroventa'].' </td></tr>';
					}
					$numeroventa=$f['numeroventa'];
					echo '<tr>
						<td><img src="./productos/'.$f['imagen'].'" width="100px" heigth="100px" /></td>
						<td>'.$f['nombre'].'</td>
						<td>'.$f['precio'].'</td>
						<td>'.$f['cantidad'].'</td>
						<td>'.$f['subtotal'].'</td>

					</tr>';
			}
		?>
	</table>
	</section>
</body>
</html>