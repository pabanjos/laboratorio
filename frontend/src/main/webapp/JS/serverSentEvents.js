var control = new EventSource("Control?action=serverSentEvents");
control.onmessage = function(event) {
	var lista = JSON.parse(event.data);
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
		saida += '<tr onmouseover=\"mudar(this)\">';
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
};
function mudar(esse) {
	esse.style.backgroundColor = "black";
	esse.style.color = "white";
}