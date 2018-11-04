<%@page import="java.time.format.FormatStyle"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDateTime"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Filtros</title>
<meta charset="utf-8">
<link rel="stylesheet" href="CSS/style.css" />
</head>
<body>
	<jsp:include page="header/header.jsp"></jsp:include>
	
	<section>
		<form action="Control" method="get">
		<input type="hidden" name="action" value="filtroNoJava">
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
					<tr>
						<th><%=LocalDateTime.now().format(DateTimeFormatter.ofLocalizedDateTime(FormatStyle.MEDIUM))%></th>
						<th><input type="search" name="title" value="" placeholder="title.."></th>
						<th><input type="search" name="genre" value="" placeholder="genre.."></th>
						<th><input type="search" name="protagonist" value="" placeholder="protagonist.."></th>
						<th><input type="search" name="director" value="" placeholder="director.."></th>
						<th><input type="search" name="released" value="" placeholder="released.."></th>
						<th><input type="submit" value="filtrar"></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${list}" var="item">
						<tr>
							<td>${item.idData}</td>
							<td>${item.title}</td>
							<td>${item.genre}</td>
							<td>${item.protagonist}</td>
							<td>${item.director}</td>
							<td>${item.released}</td>
							<td>${item.rating}</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</form>
	</section>
</body>
</html>