<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Chartist</title>
<link rel="stylesheet" href="CSS/style.css" />
<link rel="stylesheet" href="CSS/chartist.css" />
<script src="JS/chartist.js"></script>
<script src="JS/chartist-plugin-pointlabels.js"></script>
</head>
<body>
	<jsp:include page="header/header.jsp"></jsp:include>
	<div class="ct-chart ct-major-tenth"></div>

	<script type="text/javascript">
		var xhttp = new XMLHttpRequest();
		xhttp.open("GET", "Control?action=chartist", true);
		xhttp.send();
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				var lista = JSON.parse(xhttp.responseText);
				var data = {
					labels : lista.released,
					series : lista.count
				};
				new Chartist.Line('.ct-chart ', data, {
					plugins : [ Chartist.plugins.ctPointLabels({
						textAnchor : 'middle'
					}) ]
				});
			}
		}
	</script>
</body>
</html>