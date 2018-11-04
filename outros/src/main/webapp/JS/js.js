var list = [];
var list2 = [];

function all() {
	var xhttp = new XMLHttpRequest();
	xhttp.onreadystatechange = function() {
		if (xhttp.readyState == 4 && xhttp.status == 200) {
			var localList = JSON.parse(xhttp.responseText);
			list = localList;
			show(localList);
		}
	}
	xhttp.open("GET", "Control?action=all", true);
	xhttp.send();
}

function change(elemento) {
	if (elemento.style.backgroundColor === "lightblue") {
		elemento.style.backgroundColor = "white";
	} else {
		elemento.style.backgroundColor = "lightblue";
	}
}

function show(localList) {
	var dados = '';
	localList.forEach(function(x) {
		dados += '<tr onclick=change(this)>';
		dados += '<td>' + x.idData + '</td>';
		dados += '<td>' + x.title + '</td>';
		dados += '<td>' + x.genre + '</td>';
		dados += '<td>' + x.protagonist + '</td>';
		dados += '<td>' + x.director + '</td>';
		dados += '<td>' + x.released + '</td>';
		dados += '<td>' + x.rating + '</td>';
		dados += '</tr>';
	})
	dados += '<tr><th colspan=\"7\">' + localList.length + ' itens</th><tr>'
	document.getElementById('dados').innerHTML = dados;
}