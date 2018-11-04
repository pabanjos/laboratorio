<!DOCTYPE html>
<html>
<head>
<title>Upload</title>
<meta charset="utf-8">
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
	<jsp:include page="header/header.jsp"></jsp:include>
	<form action="Control?action=upload" method="post" enctype="multipart/form-data">
		<input type="file" name="foto">
		<input type="submit" value="Submit">
	</form>
	<p>Upado para: ${msg}</p>
	<img src="${imagem}" alt="imagem">
</body>
</html>