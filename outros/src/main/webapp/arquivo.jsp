<!DOCTYPE html>
<html>
<head>
<title>Upload</title>
<meta charset="utf-8">
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
	<jsp:include page="header/header.jsp"></jsp:include>
	<fieldset>
		<legend>Escrever</legend>
		<form action="Control?action=escrever" method="post">
			<textarea rows="5" cols="50" name="entrada"></textarea>
			<br /> <input type="submit" value="enviar">
		</form>
	</fieldset>
	<div id="saida">
		<fieldset>
			<legend>
				<a href="Control?action=ler">Ler</a>
			</legend>
			<p>${saida}</p>
		</fieldset>
	</div>
</body>
</html>