<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Server Sent Events</title>
<script src="JS/js.js"></script>
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
	<jsp:include page="header/header.jsp"></jsp:include>
	<table>
		<thead>
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
	</table>
	<script type="text/javascript">
		var size;
		var refresh = 0;
		var control = new EventSource("Control?action=serverSentEvents");
		control.onmessage = function(event) {
			var localList = JSON.parse(event.data);
			refresh++;
			console.log('atualizações: ' + refresh)
			if (localList.length !== size) {
				show(localList);
				size = localList.length;
			}
		}
	</script>
</body>
</html>