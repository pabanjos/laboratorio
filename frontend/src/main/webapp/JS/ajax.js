function pegar() {
	var start = document.getElementById('start').value;
	var qtd = document.getElementById('qtd').value;
	document.getElementById('inicio').innerHTML = start;
	document.getElementById('quantidade').innerHTML = qtd;
	var xhttp = new XMLHttpRequest();
	xhttp.open("post", "Control?action=ajax&start=" + start + "&qtd=" + qtd, true);
	xhttp.send();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			var lista = JSON.parse(xhttp.responseText);
			var saida = '<tr>';
			saida += '<th>idData</th>';
			saida += '<th>what</th>';
			saida += '<th>poster</th>';
			saida += '<th>title</th>';
			saida += '<th>genre</th>';
			saida += '<th>protagonist</th>';
			saida += '<th>director</th>';
			saida += '<th>extra</th>';
			saida += '<th>released</th>';
			saida += '<th>rating</th>';
			saida += '</tr>';
			for ( var x in lista) {
				saida += '<tr onclick=\"mudar(this)\">';
				saida += '<td>' + lista[x].idData + '</td>';
				saida += '<td>' + lista[x].what + '</td>';
				saida += '<td>' + lista[x].poster + '</td>';
				saida += '<td>' + lista[x].title + '</td>';
				saida += '<td>' + lista[x].genre + '</td>';
				saida += '<td>' + lista[x].protagonist + '</td>';
				saida += '<td>' + lista[x].director + '</td>';
				saida += '<td>' + lista[x].extra + '</td>';
				saida += '<td>' + lista[x].released + '</td>';
				saida += '<td>' + lista[x].rating + '</td>';
				saida += '</tr>';
			}
			document.getElementById("table").innerHTML = saida;
		}
	};
}
function mudar(elemento) {
	elemento.style.backgroundColor = "black";
	elemento.style.color = "white";
}