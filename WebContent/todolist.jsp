<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Web ToDoList</title>
</head>
<body>
<h1>Welcome <c:out value="${sessionScope.USERNAME}"/></h1>
	<table class="blueTable">
		<thead>
			<tr>
				<th>Id</th>
				<th>Description</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="list" items="${TODO_LIST }">
				<tr>
					<td>${list.getId()}</td>
					<td>${list.getDescription()}</td>
			</c:forEach>
		</tbody>
	</table>
		<form action="AccountControllerServlet" method="get">
		<input type="submit" value="Logout" />
	</form>
</body>
</html>

