<!DOCTYPE html>
<html>
<head>
<title>Data</title>
<meta charset="utf-8">
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
	<jsp:include page="header/header.jsp"></jsp:include>
	<form action="Control?action=date" method="post">
		<input type="datetime-local" name="data" required> 
		<input type="submit" value="enviar">
	</form>
	<div id="saida">
		<h2>Data atual:</h2>
		<h3>${atual}</h3>
		<hr>
		<h2>Data Formatada:</h2>
		<h3>${dataFormatada}</h3>
		<hr>
		<h2>Seu tempo de vida em:</h2>
		<h3>Anos: ${anos}</h3>
		<h3>Meses: ${meses}</h3>
		<h3>Dias: ${dias}</h3>
		<h3>Horas: ${horas}</h3>
		<h3>Minutos: ${minutos}</h3>
		<h3>Segundos: ${segundos}</h3>
	</div>
</body>
</html>