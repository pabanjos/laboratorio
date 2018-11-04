<!DOCTYPE html>
<html>
<head>
<title>Ajax</title>
<meta charset="utf-8">
<script src="JS/ajax.js"></script>
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
	<jsp:include page="header/header.jsp"></jsp:include>
	Inicio: (1 ~ 200)
	<input type="range" id="start" min="1" max="200" value="1" oninput="pegar()"> =
	<b id="inicio">Inicio:</b>
	<br> Quantidade: (1 ~ 300)
	<input type="range" id="qtd" min="1" max="300" value="10" oninput="pegar()"> =
	<b id="quantidade">Quantidade:</b>
	<table id="table">
	</table>
	<script type="text/javascript">
		pegar();
	</script>
</body>
</html>