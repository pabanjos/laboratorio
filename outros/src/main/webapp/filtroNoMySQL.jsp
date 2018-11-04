<!DOCTYPE html>
<html>
<head>
<title>Filtros</title>
<meta charset="utf-8">
<script src="JS/js.js"></script>
<script type="text/javascript">
	function filtroNoMySQL(st) {
		var start = 0;
		if (st !== undefined) {
			start = st;
		}
		var xhttp = new XMLHttpRequest();
		var title = document.getElementById('title').value;
		var released1 = document.getElementById('released1').value;
		var released2 = document.getElementById('released2').value;
		var quantity = document.getElementById('quantity').value;
		var syntax = "Control?action=filtroNoMySQL&title=" + title + "&released1="
				+ released1 + "&released2=" + released2 + "&start=" + start
				+ "&quantity=" + quantity;
		xhttp.open("GET", syntax, true);
		xhttp.send();
		xhttp.onreadystatechange = function() {
			if (xhttp.readyState == 4 && xhttp.status == 200) {
				var localList = JSON.parse(xhttp.responseText);
				show(localList);
			}
		}
	}
</script>
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body onload="filtroNoMySQL()">
	<jsp:include page="header/header.jsp"></jsp:include>

	<section>
		<form action="" novalidate>
			<table>
				<thead>
					<tr>
						<th colspan="2">
							<input type="search" id="title" placeholder="title.." oninput="filtroNoMySQL()">
						</th>
						<th colspan="2">
							<select id="genres" onchange="getDirectors(this.value)">
							</select>
							<select id="directors">
							</select>
						</th>
						<th colspan="3">
							<input type="number" id="released1" min="1930" max="2016" value="1930" oninput="filtroNoMySQL()">
							<input type="number" id="released2" min="1930" max="2016" value="2016" oninput="filtroNoMySQL()">
						</th>
					</tr>
					<tr>
						<th><a href="#">ID</a></th>
						<th><a href="#">TITLE</a></th>
						<th><a href="#">GENRE</a></th>
						<th><a href="#">PROTAGONIST</a></th>
						<th><a href="#">DIRECTOR</a></th>
						<th><a href="#">RELEASED</a></th>
						<th><a href="#">RATING</a></th>
					</tr>
				</thead>
				<tbody id="dados">
				</tbody>
				<tfoot>
					<tr>
						<th colspan="7">
							<input type="number" id="quantity" value="10" oninput="filtroNoMySQL()">
							<a href="javascript:filtroNoMySQL(0)">1</a>
							<a href="javascript:filtroNoMySQL(10)">2</a>
							<a href="javascript:filtroNoMySQL(20)">3</a>
							<a href="javascript:filtroNoMySQL(30)">4</a>
							<a href="javascript:filtroNoMySQL(40)">5</a>
							<a href="javascript:filtroNoMySQL(50)">6</a>
							<a href="javascript:filtroNoMySQL(60)">7</a>
							<a href="javascript:filtroNoMySQL(70)">8</a>
							<a href="javascript:filtroNoMySQL(80)">9</a>
							<a href="javascript:filtroNoMySQL(90)">10</a>
							<a href="javascript:filtroNoMySQL(100)">11</a>
							<a href="javascript:filtroNoMySQL(110)">12</a>
							<a href="javascript:filtroNoMySQL(120)">13</a>
							<a href="javascript:filtroNoMySQL(130)">14</a>
							<a href="javascript:filtroNoMySQL(140)">15</a>
							<a href="javascript:filtroNoMySQL(150)">16</a>
							<a href="javascript:filtroNoMySQL(160)">17</a>
							<a href="javascript:filtroNoMySQL(170)">18</a>
						</th>
					</tr>
				</tfoot>
			</table>
		</form>
	</section>
	<script type="text/javascript">
		document.getElementById('directors').style.opacity = '0';
		
		var xhttp = new XMLHttpRequest();
		xhttp.onreadystatechange = function() {
			var text = xhttp.responseText;
			var genres = text.split(',');
			var saida = '<option value=>generos..</option>';
			genres.forEach(function(x) {
				saida += '<option value='+x+'>' + x + '</option>';
			})
			document.getElementById('genres').innerHTML = saida;
		}
		xhttp.open("GET", "Control?action=genres", true);
		xhttp.send();


		function getDirectors(genre) {
			if (document.getElementById('genres').value === '') {
				document.getElementById('directors').style.opacity = '0';
				return;
			}
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
				var text = xhttp.responseText;
				var directors = text.split(',');
				var saida = ''
				directors.forEach(function(x) {
					saida += '<option value='+x+'>' + x + '</option>';
				})
				document.getElementById('directors').innerHTML = saida;
				document.getElementById('directors').style.opacity = '1';
			}
			xhttp.open("GET", "Control?action=directors&genre=" + genre, true);
			xhttp.send();
		}
	</script>
</body>
</html>