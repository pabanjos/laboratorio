<!DOCTYPE html>
<html>
<head>
<title>Filtros</title>
<meta charset="utf-8">
<script src="JS/js.js"></script>
<script type="text/javascript">
	var ordem = false;

	function porKeyword() {
		var title = document.getElementById('title').value;
		var genre = document.getElementById('genre').value;
		var protagonist = document.getElementById('protagonist').value;
		var director = document.getElementById('director').value;
		var released = document.getElementById('released').value;
		var rating = document.getElementById('rating').value;
		if ((title != '') || (genre != '') || (protagonist != '')
				|| (director != '') || (released != '') || (rating != '')) {
			list2 = list.filter(function(item) {
				return (item.title.search(title) >= 0)
						&& (item.genre.search(genre) >= 0)
						&& (item.protagonist.search(protagonist) >= 0)
						&& (item.director.search(director) >= 0);
			})
		} else {
			list2 = list;
		}
	}

	function ordenar(coluna) {
		if(coluna !== undefined) {
			ordem = !ordem;
			if (coluna === 'idData') {
				if (ordem === true) {
					list2 = list2.sort(function(a, b) {
						return a.idData - b.idData;
					})
				} else if (ordem === false) {
					list2 = list2.sort(function(a, b) {
						return b.idData - a.idData;
					})
				}
			}
			if (coluna === 'released') {
				if (ordem === true) {
					list2 = list2.sort(function(a, b) {
						return a.released - b.released;
					})
				} else if (ordem === false) {
					list2 = list2.sort(function(a, b) {
						return b.released - a.released;
					})
				}
			}
			else if (coluna === 'rating') {
				if (ordem === true) {
					list2 = list2.sort(function(a, b) {
						return a.rating - b.rating;
					})
				} else if (ordem === false) {
					list2 = list2.sort(function(a, b) {
						return b.rating - a.rating;
					})
				}
			}
		}
	}

	function filtrar(coluna) {
		porKeyword();
		ordenar(coluna);
		show(list2);
	}

	function clear() {
		document.getElementById('title').value = '';
		document.getElementById('genre').value = '';
		document.getElementById('protagonist').value = '';
		document.getElementById('director').value = '';
		document.getElementById('released').value = '';
		document.getElementById('rating').value = '';
		show(list);
	}
</script>
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body onload="all()">
	<jsp:include page="header/header.jsp"></jsp:include>
	<section>
		<form oninput="filtrar()">
			<table>
				<thead>
					<tr>
						<th><a href="#" onclick="filtrar('idData')">ID</a></th>
						<th><a href="#" onclick="filtrar('title')">TITLE</a></th>
						<th><a href="#" onclick="filtrar('genre')">GENRE</a></th>
						<th><a href="#" onclick="filtrar('protagonist')">PROTAGONIST</a></th>
						<th><a href="#" onclick="filtrar('director')">DIRECTOR</a></th>
						<th><a href="#" onclick="filtrar('released')">RELEASED</a></th>
						<th><a href="#" onclick="filtrar('rating')">RATING</a></th>
					</tr>
					<tr>
						<th><button onclick="clear()">Clear..</button></th>
						<th><input type="search" id="title" placeholder="title.."></th>
						<th><select id="genre">
								<option value="">Selecione um genero</option>
								<option value="Animation">Animation</option>
								<option value="Comedy">Comedy</option>
								<option value="BasedOnHQ">BasedOnHQ</option>
								<option value="Action">Action</option>
								<option value="FeelGood">FeelGood</option>
								<option value="Drama">Drama</option>
								<option value="Fantasy">Fantasy</option>
								<option value="Sci-Fi">Sci-Fi</option>
								<option value="Terror">Terror</option>
						</select></th>
						<th><input type="search" id="protagonist"
							placeholder="protagonist.."></th>
						<th><input type="search" id="director"
							placeholder="director.."></th>
						<th><input type="number" id="released" min="1930" max="2020"></th>
						<th><input type="number" id="rating" min="1930" max="2020"></th>
					</tr>
				</thead>
				<tbody id="dados">
				</tbody>
			</table>
		</form>
	</section>
</body>
</html>